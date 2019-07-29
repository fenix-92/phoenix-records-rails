class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    # render plain: params[:artist].inspect
    @artist = Artist.new artist_params
    @artist.save
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :discogsid)
  end

end
