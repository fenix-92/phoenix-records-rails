class SleeveGradingsController < ApplicationController
  def new
    check_user_logged
  end

  def show
  end

  def create
    check_user_logged
    # render plain: params[:artist].inspect
    @sleeve = SleeveGrading.new sleeve_params
    # @artist.avatar.attach(params[:avatar])
    if @sleeve.save
      redirect_to admin_grading_path, success: "Grading created"
    else
      render 'new', alert: "Grading not created"
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
    @sleeve = SleeveGrading.find(params[:id])
    @sleeve.destroy

    redirect_to admin_grading_path, success: "Grading deleted"
  end

  private

  def sleeve_params
    params.require(:sleeve_grading).permit(:name, :text)
  end
end
