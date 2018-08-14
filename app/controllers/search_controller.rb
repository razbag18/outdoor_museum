class SearchController < ApplicationController

  def index
    @google = HTTParty.get("https://maps.googleapis.com/maps/api/js?key=#{ENV['GOOGLE_MAPS_KEY']}&callback=initMap")
  end
end
