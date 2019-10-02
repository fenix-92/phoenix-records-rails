class ArtistsController < ApplicationController

  def index
    @artists = Artist.order('created_at DESC').with_attached_avatar
    # render json: @artists.to_json(include: { avatar_attachment: { include: :blob } })
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def new
    check_user_logged
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update(artist_params)
      redirect_to admin_artists_path
    else
      render 'edit'
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def remove_all
    check_user_logged
    Artist.delete_all

    redirect_to admin_artists_path
  end

  def destroy
    check_user_logged
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to admin_artists_path
  end

  def create
    check_user_logged
    # render plain: params[:artist].inspect
    @artist = Artist.new artist_params
    # @artist.avatar.attach(params[:avatar])
    respond_to do |format|
      if @artist.save
        format.html { redirect_to @artist, success: 'Artist was successfully created' }
        format.json { render :show, status: :created, location: @artist }
      else
        render 'new'
      end
    end
  end

  def check_user_logged
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      # User is logged
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :discogsid, :avatar)
  end
end
