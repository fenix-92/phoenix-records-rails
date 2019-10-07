class RecordCompaniesController < ApplicationController
  def new
    check_user_logged
  end

  def show
  end

  def create
    check_user_logged
    # render plain: params[:artist].inspect
    @label = RecordCompany.new record_company_params
    # @artist.avatar.attach(params[:avatar])
    if @label.save
      redirect_to admin_labels_path, success: "Label created"
    else
      render 'new', alert: "Label don't created"
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
    @label = RecordCompany.find(params[:id])
    @label.destroy

    redirect_to admin_labels_path, success: "Label deleted"
  end

  private

  def record_company_params
    params.require(:record_company).permit(:name, :long_name, :photo)
  end
end
