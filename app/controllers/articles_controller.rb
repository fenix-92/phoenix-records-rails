class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    check_user_logged
  end

  def show
  end

  def check_user_logged
    if !user_signed_in?
      redirect_to new_user_session_path, info: "Please, log in"
    else
      # User is logged
    end
  end

  def create
    check_user_logged
    # render plain: params[:artist].inspect
    @article = Article.new store_params
    # @artist.avatar.attach(params[:avatar])
    if @article.save
      redirect_to admin_articles_path, success: "Article created"
    else
      render 'new', alert: "Article don't created"
    end
  end
end
