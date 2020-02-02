class PostsController < ApplicationController

  def index
    @posts = Post.all.paginate(:page => params[:page])
    @posts_all = Post.all
    # Featured
    @posts = @posts.is_featured.paginate(:page => params[:page]) if params[:featured].present?
    @posts_all = @posts.is_featured if params[:featured].present?
    # Year filter
    @posts = @posts.by_year(params[:year]).paginate(:page => params[:page]) if params[:year].present?
    @posts_all = @posts.by_year(params[:year]) if params[:year].present?
    # Artist filter
    @posts = @posts.by_artist(params[:artist]).paginate(:page => params[:page]) if params[:artist].present?
    @posts_all = @posts.by_artist(params[:artist]) if params[:artist].present?
    # Country filter
    @posts = @posts.by_country(params[:country]).paginate(:page => params[:page]) if params[:country].present?
    @posts_all = @posts.by_country(params[:country]) if params[:country].present?
    # Label filter
    @posts = @posts.by_label(params[:label]).paginate(:page => params[:page]) if params[:label].present?
    @posts_all = @posts.by_label(params[:label]) if params[:label].present?
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
      if params[:image_front]
        @post.image_front.create(image_front: params[:image_front])
      end
      redirect_to admin_records_path, notice: "Record created"
    else
      render 'new', notice: "Record don't created"
    end
  end

  def check_user_logged
    if !user_signed_in?
      redirect_to new_user_session_path, info: "Please, log in before continue"
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
    check_user_logged
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to admin_records_path, success: "Record updated"
    else
      render 'edit', alert: "Record don't updated"
    end
  end

  def edit
    check_user_logged
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :artist_id, :country_id, :store_id, :format_id, :sleeve_grading_id, :buyed_at, :media_grading_id, :record_company_id, :store_id, :year, :discogsid, :image_front, :back, :audio_sample, :vinyl1, :vinyl2, :q, :hex_color, :featured, :original_inner, :misprint, :double_lp, :unofficial, :colored, :first_press, :gatefold, :notes, :inshrink, :serial_no, :matrix_a, :matrix_b, :sealed)
  end
end
