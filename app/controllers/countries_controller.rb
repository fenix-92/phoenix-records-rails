class CountriesController < ApplicationController
  def new
    check_user_logged
  end

  def show
  end

  def create
    check_user_logged
    @country = Country.new country_params
    if @country.save
      redirect_to admin_countries_path, success: "Country created"
    else
      render 'new', alert: "Country don't created"
    end
  end

  def edit
    check_user_logged
    @country = Country.find(params[:id])
  end

  def update
    check_user_logged
    @country = Country.find(params[:id])
    if @country.update(country_params)
      redirect_to admin_countries_path, success: "Country updated"
    else
      render 'edit', alert: "Country don't updated"
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
    @country = Country.find(params[:id])
    @country.destroy

    redirect_to admin_countries_path, success: "Country deleted"
  end

  private

  def country_params
    params.require(:country).permit(:name, :country_code, :image_flag)
  end
end
