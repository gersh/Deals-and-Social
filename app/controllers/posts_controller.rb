class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    #@post = Post.new(:text => params[:post][:text],
    #:theme_id => params[:post][:theme_id],
    #:twitter_user => params[:post][:twitter_user])
    @post = Post.new(params[:post])
    @post.save
    thid = @post.theme_id
    redirect_to :controller => :glue, :action => :show, :id => thid
  end
end
