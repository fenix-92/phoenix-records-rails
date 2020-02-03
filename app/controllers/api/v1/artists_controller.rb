module Api
  module V1
    class ArtistsController < ApplicationController
      def index
        render json: @artists = Artist.all
      end
    end
  end
end
