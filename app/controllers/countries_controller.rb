class CountriesController < ApplicationController
  def new
    check_user_logged
  end

  def show
  end

  def create
    check_user_logged
    # render plain: params[:artist].inspect
    @country = Country.new country_params
    # @artist.avatar.attach(params[:avatar])
    if @country.save
      redirect_to admin_countries_path
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
    @country = Country.find(params[:id])
    @country.destroy

    redirect_to admin_countries_path
  end

  private

  def country_params
    params.require(:country).permit(:name, :country_code, :flag)
  end
end
