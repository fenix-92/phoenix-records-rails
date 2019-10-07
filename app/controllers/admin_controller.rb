class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def records
    @posts = Post.order('created_at DESC').with_attached_front
  end

  def labels
    @labels = RecordCompany.order('created_at DESC')
  end

  def users
    @users = User.all
  end

  def grading
    @sleeve = SleeveGrading.all
    @media = MediaGrading.all
  end

  def country
    @country = Country.all.with_attached_flag
  end

  def artists
    @artists = Artist.order('created_at DESC').with_attached_avatar
  end

  def articles
    @articles = Article.order('created_at DESC')
  end

  def labels
    @labels = RecordCompany.order('created_at DESC')
  end

    def check_user_logged
      if !user_signed_in?
        redirect_to new_user_session_path, info: "Please, log in before continue"
      else
        # User is logged
      end
    end
end
