class HomepageController < ApplicationController
  def index
    @google_address_auto = google_auto_complete
  end
end
