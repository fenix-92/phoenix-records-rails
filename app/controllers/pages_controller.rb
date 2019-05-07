class PagesController < ApplicationController
  def home
    redirect_to :controller => 'posts', :action => 'index'
  end

  def blog
  end

  def about
  end
end
