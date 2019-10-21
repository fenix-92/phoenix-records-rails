class PostsController < ApplicationController

  def index
    if params[:t]
      @posts = Post.where("title LIKE '%#{params[:t]}%'").order('created_at DESC')
    elsif params[:a]
      @posts = Post.joins(:artist).where("name LIKE '%#{params[:a]}%'").order('created_at DESC')
    elsif params[:l]
      @posts = Post.joins(:record_company).where("name LIKE '%#{params[:l]}%'").order('created_at DESC')
    elsif params[:c]
      @posts = Post.joins(:country).where("name LIKE '%#{params[:c]}%'").order('created_at DESC')
    elsif
      @posts = Post.order('created_at DESC')
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
    params.require(:post).permit(:title, :artist_id, :country_id, :store_id, :format_id, :sleeve_grading_id, :media_grading_id, :record_company_id, :store_id, :year, :discogsid, :front, :back, :audio_sample, :vinyl1, :vinyl2, :q, :hex_color, :featured, :original_inner, :misprint, :double_lp, :unofficial, :colored, :first_press, :gatefold, :notes, :serial_no, :matrix_a, :matrix_b)
  end
end
