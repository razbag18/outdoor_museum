class SearchController < ApplicationController

  def index
    @pic = Picture.first
    pic_votes = @pic.users_pictures
    total_points = pic_votes.pluck('rating').reduce(:+)
    if total_points 
      @ratings = total_points/pic_votes.length
    else
      @ratings = 0
    end
    
    @google_map_loader = google_script
    location = gmaps.geocode(params[:search])
    @lat = location[0][:geometry][:location][:lat]
    @lng = location[0][:geometry][:location][:lng]
  end

  
  
end

