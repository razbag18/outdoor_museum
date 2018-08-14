class SearchController < ApplicationController

  def index

    # user search for street / or location
    # request to geocode to get lat / long from st name

    # map uluru is generated
    @google = HTTParty.get("https://maps.googleapis.com/maps/api/js?key=#{ENV['GOOGLE_MAPS_KEY']}&callback=initMap")
    byebug
    @uluru = gmaps.geocode(params[:search])

  end
end
