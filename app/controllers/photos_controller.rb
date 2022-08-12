class PhotosController < ApplicationController
  layout "feed"
  def index 
    @user = User.find(params[:user_id])
  end

  def feed
    @user = User.find(params[:user_id])
    @photos = Photo.includes(:user).where(is_private: false).or(Photo.includes(:user).where(is_private: nil))
  end
end