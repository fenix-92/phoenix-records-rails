module Api
  module V1
    class PostsController < ApplicationController
      def index
        render json: @posts = Post.all
      end
    end
  end
end
