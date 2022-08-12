class AlbumsController < ApplicationController
  layout "feed"
  def index 
    @user = User.find(params[:user_id])
  end

  def feed
    @user = User.find(params[:user_id])
    @albums = Album.includes(:user).where(is_private: false).or(Album.includes(:user).where(is_private: nil))
  end
end