class SearchController < ApplicationController

  def gmaps
    gmaps = GoogleMapsService::Client.new(key: ENV['GOOGLE_MAPS_KEY'])
  end

  def index

    # user search for street / or location
    # request to geocode to get lat / long from st name

    # map uluru is generated
    @google = HTTParty.get("https://maps.googleapis.com/maps/api/js?key=#{ENV['GOOGLE_MAPS_KEY']}&callback=initMap")
    binding.pry
    @uluru = gmaps.geocode(params[:search])

  end
end
