class HomepageController < ApplicationController
  def index
    @google_address_auto = google_auto_complete
  end

  def user_dashboard
    show_user_uploaded_pics
    show_user_favourited_pics
    render :user_dashboard
  end

  def show_user_uploaded_pics
    @user_uploaded_pictures = Picture.where(user_id: session[:user_id])
  end

  def show_user_favourited_pics
    @user_favourited_pictures = UsersPicture.where(user_id: session[:user_id], isfav: true).joins(:picture).includes(:picture)
  end

end
