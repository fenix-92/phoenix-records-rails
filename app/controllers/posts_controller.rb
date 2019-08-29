class PostsController < ApplicationController

  def index
    @posts = Post.order('created_at DESC').with_attached_front
  end

  def new
  end

  def create
    #render plain: params[:post].inspect
    @post = Post.new post_params
    @post.save
  end

  private

  def post_params
    params.require(:post).permit(:title, :artist_id, :year, :discogsid)
  end
end
