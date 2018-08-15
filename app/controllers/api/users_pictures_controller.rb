class Api::UsersPicturesController < ApplicationController
  def update_rating
    # check if there is a users_pictures record for this user & picture
    # if found, update the record's rating
    # otherwise, create a new users_pictures record with this rating.
    render json: {rating: params[:rating]}
  end
end