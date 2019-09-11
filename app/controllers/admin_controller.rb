class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def records
  end

  def artists
    @artists = Artist.order('created_at DESC').with_attached_avatar
  end
end
