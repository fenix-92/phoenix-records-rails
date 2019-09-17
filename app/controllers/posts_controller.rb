class PostsController < ApplicationController

  def index
    if params[:q]
      @posts = Post.where('title LIKE ?', "%#{params[:q]}%").with_attached_front
    else
      @posts = Post.order('created_at DESC').with_attached_front
    end
  end

  def new
    check_user_logged
  end

  def destroy
    check_user_logged
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to admin_records_path
  end

  def create
    check_user_logged
    #render plain: params[:post].inspect
    @post = Post.new post_params
    if @post.save
      redirect_to admin_records_path
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

  def search
  end

  def show
    @post = Post.find(params[:id])
    require "discogs"
    wrapper = Discogs::Wrapper.new("Phoenix Records")
    @release = wrapper.get_release(@post.discogsid)
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to admin_records_path
    else
      render 'edit'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :artist_id, :sleeve_grading_id, :media_grading_id, :year, :discogsid, :front, :back, :q, :featured)
  end
end
