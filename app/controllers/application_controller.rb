class ApplicationController < ActionController::Base

  def gmaps
    gmaps = GoogleMapsService::Client.new(key: ENV['GOOGLE_MAPS_KEY'])
  end

  def google_script
    @google = HTTParty.get("https://maps.googleapis.com/maps/api/js?key=#{ENV['GOOGLE_MAPS_KEY']}&callback=initMap")
  end
  
  def google_auto_complete
    @google_auto_complete = HTTParty.get("https://maps.googleapis.com/maps/api/js?key=#{ENV['GOOGLE_MAPS_KEY']}&callback=initMap&libraries=places")
  end

  include SessionsHelper

end
