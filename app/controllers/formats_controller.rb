class FormatsController < ApplicationController
  def new
    check_user_logged
  end

  def show
  end

  def create
    check_user_logged
    # render plain: params[:artist].inspect
    @format = Format.new format_params
    # @artist.avatar.attach(params[:avatar])
    if @format.save
      redirect_to admin_formats_path, success: "Format created"
    else
      render 'new', alert: "Format don't created"
    end
  end

  def check_user_logged
    if !user_signed_in?
      redirect_to new_user_session_path, info: "Please, log in"
    else
      # User is logged
    end
  end

  def destroy
    check_user_logged
    @format = Format.find(params[:id])
    @format.destroy

    redirect_to admin_formats_path, success: "Format deleted"
  end

  private

  def format_params
    params.require(:format).permit(:name, :long_name)
  end
end
