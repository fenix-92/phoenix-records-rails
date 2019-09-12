class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def records
    @posts = Post.order('created_at DESC').with_attached_front
  end

  def artists
    @artists = Artist.order('created_at DESC').with_attached_avatar
  end

  def delete_all_artists
    check_user_logged
    Artist.delete_all
    
    redirect_to admin_artists_path
  end

    def check_user_logged
      if !user_signed_in?
        redirect_to new_user_session_path
      else
        # User is logged
      end
    end
end
