class ProfessionalsController < ApplicationController
  def index
    @professionals = Professional.all
    #if params[;service_id].present?
      # @professionals = @professionals.where(...)
    #end
        
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @professionals.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end
