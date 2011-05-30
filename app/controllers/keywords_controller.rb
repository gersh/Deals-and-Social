class KeywordsController < ApplicationController
  def index()
  end
  def search()
    search = Twitter::Search.new

    @s=search.containing(params[:keyword]).geocode(params[:lat],params[:lon],params[:dist] + "mi")
    th = Theme.new
    th.theme = params[:keyword]
    th.phrases << Phrase.new(:phrase=>params[:keyword])
    th.save

    #@users=@s.fetch.map{|tw| tw.from_user}
    @s.fetch.each {|tw|
      tweet = Tweet.new(:twitter_user=>tw.from_user,:tweet=>tw.text, :theme_id => th.id, :created_at => tw.created_at)
      tweet.save
    }

    redirect_to :controller => :glue, :action => :show, :id => th.id
    #render :json=>@users
  end
end
