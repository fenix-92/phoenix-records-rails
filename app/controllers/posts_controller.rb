class PostsController < ApplicationController

  def index
    @posts = Post.order('created_at DESC').with_attached_front
  end

  def new
    check_user_logged
  end

  def create
    check_user_logged
    #render plain: params[:post].inspect
    @post = Post.new post_params
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def check_user_logged
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      # User is logged
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :artist_id, :year, :discogsid, :front)
  end
end
