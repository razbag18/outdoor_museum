class Api::UsersPicturesController < ApplicationController
  def update_rating
    rating_pic = UsersPicture.find_by(user_id: session[:user_id], picture_id: params[:picture_id])

    if !rating_pic
      rating_pic = UsersPicture.new
      rating_pic.user_id = session[:user_id]
      rating_pic.picture_id = params[:picture_id]
    end

    rating_pic.rating = params[:rating]
    rating_pic.save

    render json: {
      rating: params[:rating],
      average_rating: get_avg_rating
    }
  end

  def toggle_favourites
    user_pic = UsersPicture.find_by(user_id: session[:user_id], picture_id: params[:picture_id])

    if !user_pic
      user_pic = UsersPicture.new
      user_pic.user_id = session[:user_id]
      user_pic.picture_id = params[:picture_id]
    end

    user_pic.isfav = !user_pic.isfav
    user_pic.save

    render json: {
      checked: user_pic.isfav
    }
  end

  private
  def get_avg_rating
    UsersPicture.where(picture_id: params[:picture_id]).average(:rating).to_i
  end
end