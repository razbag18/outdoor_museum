class Api::PicturesController < ApplicationController
  
  def update_pictures
  
    radius = (300.to_f / 100000)
    lat_lng = {lat: params[:lat], lng: params[:lng]}
    @pictures = Picture.all.select{ |picture| 
      (picture.latitude - lat_lng[:lat].to_f )**2 +
      (picture.longitude - lat_lng[:lng].to_f)**2 < radius**2
    }
    render json: @pictures
  end

end