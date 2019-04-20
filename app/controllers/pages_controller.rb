class PagesController < ApplicationController
  def home
    # This could redirect the users to the login page if they log out
    # for private websites or backends
    # if !user_signed_in?
    #  redirect_to new_user_session_path
    # end
  end
end
