class GlueController < ApplicationController
  def show
    @theme = Theme.find(params[:id])
    @current_post = Post.new
  end
end
