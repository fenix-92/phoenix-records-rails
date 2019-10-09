class StoresController < ApplicationController
  def new
    check_user_logged
  end

  def show
  end

  def full_address
    [country, city, street].compact.join(‘, ‘)
  end

  def create
    check_user_logged
    # render plain: params[:artist].inspect
    @store = Store.new store_params
    # @artist.avatar.attach(params[:avatar])
    if @store.save
      redirect_to admin_stores_path, success: "Store created"
    else
      render 'new', alert: "Store don't created"
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
    @store = Store.find(params[:id])
    @store.destroy

    redirect_to admin_stores_path, success: "Store deleted"
  end

  private

  def store_params
    params.require(:store).permit(:name, :description, :address)
  end
end
