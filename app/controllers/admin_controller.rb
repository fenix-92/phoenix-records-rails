class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def records
    @posts = Post.order('created_at DESC').with_attached_front
  end

  def artists
    @artists = Artist.order('created_at DESC').with_attached_avatar
  end
end
