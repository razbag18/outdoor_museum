class SearchController < ApplicationController

  def index
    @google_map_loader = google_script
    location = gmaps.geocode(params[:search])
    @lat = location[0][:geometry][:location][:lat]
    @lng = location[0][:geometry][:location][:lng]
    radius = (7000.to_f / 100000)
    @pictures = 
    Picture.all
    .select{ |picture| 
      (picture.latitude - @lat )**2 + (picture.longitude - @lng)**2 < radius**2
    }
  end

  
  
end