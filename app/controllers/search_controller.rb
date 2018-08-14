class SearchController < ApplicationController

  def index

    # select all from database where radius === radius of the search
    
    @google_map_loader = google_script
    location = gmaps.geocode(params[:search])
    @lat = location[0][:geometry][:location][:lat]
    @lng = location[0][:geometry][:location][:lng]
  end
  
end
