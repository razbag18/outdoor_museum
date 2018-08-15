class Api::UsersPicturesController < ApplicationController
  def update_rating

    rating_pic = UsersPicture.find_by(user_id: session[:user_id], picture_id: params[:picture_id])
    if rating_pic
      rating_pic.rating = params[:rating]
      rating_pic.save
    else
      rating_pic = UsersPicture.new
      rating_pic.user_id = session[:user_id]
      rating_pic.picture_id = params[:picture_id]
      rating_pic.save
    end

    render json: {
      rating: params[:rating],
      average_rating: get_avg_rating
    }
  end

  private
  def get_avg_rating
    UsersPicture.where(picture_id: params[:picture_id]).average(:rating).to_i
  end
end