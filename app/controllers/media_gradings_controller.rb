class MediaGradingsController < ApplicationController
  def new
    check_user_logged
  end

  def show
  end

  def create
    check_user_logged
    # render plain: params[:artist].inspect
    @media = MediaGrading.new media_params
    # @artist.avatar.attach(params[:avatar])
    if @media.save
      redirect_to admin_grading_path
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

  def destroy
    check_user_logged
    @media = MediaGrading.find(params[:id])
    @media.destroy

    redirect_to admin_grading_path
  end

  private

  def media_params
    params.require(:media_grading).permit(:name, :text)
  end
end
