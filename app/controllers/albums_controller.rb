class AlbumsController < ApplicationController
  layout "feed"
  def index 
    @user = User.find(params[:user_id])
  end

  def feed
    @user = User.find(params[:user_id])
    @albums = Album.includes(:user).where(is_private: false).page(params[:page]).per(PER_PAGE)
  end
end