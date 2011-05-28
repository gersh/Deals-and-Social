class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    thid = @post.theme_id
    redirect_to :controller => :glue, :action => :show, :id => thid
  end
end