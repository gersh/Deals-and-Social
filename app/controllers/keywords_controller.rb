class KeywordsController < ApplicationController
  def index()
  end
  def search()
    search = Twitter::Search.new

    @s=search.containing(params[:keyword]).geocode(params[:lat],params[:lon],params[:dist] + "mi")
    @users=@s.fetch.map{|tw| tw.from_user}
    render :json=>@users
  end
end
