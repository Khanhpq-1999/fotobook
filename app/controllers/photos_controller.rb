class PhotosController < ApplicationController
  layout "feed"
  def index 
    @user = User.find(params[:user_id])
    @photos = @user.photos.page(params[:page]).per(PER_PAGE)
  end

  def feed
    params.permit(:user_id).merge(page: nil)
    params.merge(:page => nil).permit(:controller, :action, :user_id, :page)
    @user = User.find(params[:user_id])
    @photos = Photo.includes(:user).where(is_private: [false, nil]).page(params[:page]).per(PER_PAGE)
  end
end

