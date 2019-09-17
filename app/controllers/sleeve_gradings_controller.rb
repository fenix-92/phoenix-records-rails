class SleeveGradingsController < ApplicationController
  def new
    check_user_logged
  end

  def show
  end

  def create
  end

  def check_user_logged
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      # User is logged
    end
  end
end
