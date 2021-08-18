class ProfessionalsController < ApplicationController
  def index
    @professionals = Professional.all
    if params[:sub_service_id].present?
      @professionals = @professionals.joins(:specialities).where(specialities: { sub_service_id: params[:sub_service_id] })
    end

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @professionals.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end
