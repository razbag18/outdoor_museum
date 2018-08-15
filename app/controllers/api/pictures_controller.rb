class Api::PicturesController < ApplicationController
  
  def show_pictures
  
    radius = (7000.to_f / 100000)
    @pictures = Picture.all.select{ |picture| 
      (picture.latitude - params[:latitude] )**2 +
      (picture.longitude - params[:longitude])**2 < radius**2
    }
    render json: @pictures
  end

end