class SearchController < ApplicationController

  def index
    @pic = Picture.first
    pic_votes = @pic.users_pictures
    # @ratings = pic_votes.pluck('rating').reduce(:+)/pic_votes.length
    @google_map_loader = google_script
    location = gmaps.geocode(params[:search])
    @lat = location[0][:geometry][:location][:lat]
    @lng = location[0][:geometry][:location][:lng]


    @pictures = Picture.all


  end
  
end

# find all the picture locations
# Picture.all.pluck geolocations



# add all markers to map
# add function to show pop up after you click
# add marker to page (depending )