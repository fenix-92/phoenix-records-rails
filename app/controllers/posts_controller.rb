class PostsController < ApplicationController

  def index
    if params[:title]
      @posts = Post.where("title LIKE '%#{params[:title]}%'").order('created_at DESC')
    elsif params[:artist]
      @posts = Post.joins(:artist).where("name LIKE '%#{params[:artist]}%'").order('created_at DESC')
    elsif params[:label]
      @posts = Post.joins(:record_company).where("name LIKE '%#{params[:label]}%'").order('created_at DESC')
    elsif params[:country]
      @posts = Post.joins(:country).where("name LIKE '%#{params[:country]}%'").order('created_at DESC')
    elsif params[:year]
      @posts = Post.where("year LIKE '%#{params[:year]}%'").order('created_at DESC')
    elsif params[:store]
      @posts = Post.joins(:store).where("name LIKE '%#{params[:store]}%'").order('created_at DESC')
    elsif params[:buyed]
      @posts = Post.where("buyed_at LIKE '%#{params[:buyed]}%'").order('created_at DESC')
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
    params.require(:post).permit(:title, :artist_id, :country_id, :store_id, :format_id, :sleeve_grading_id, :buyed_at, :media_grading_id, :record_company_id, :store_id, :year, :discogsid, :front, :back, :audio_sample, :vinyl1, :vinyl2, :q, :hex_color, :featured, :original_inner, :misprint, :double_lp, :unofficial, :colored, :first_press, :gatefold, :notes, :inshrink, :serial_no, :matrix_a, :matrix_b)
  end
end
