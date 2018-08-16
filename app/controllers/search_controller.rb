class SearchController < ApplicationController

  def index
    @google_map_loader = google_script
    location = gmaps.geocode(params[:search])
    @lat = location[0][:geometry][:location][:lat]
    @lng = location[0][:geometry][:location][:lng]
    radius = (7000.to_f / 100000)
  end

  
  
end