class ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show]
  def index
    @professionals = Professional.all
    if params[:sub_service_id].present?
      @professionals = @professionals.joins(:specialities).where(specialities: { sub_service_id: params[:sub_service_id] })
    end
    if params[:query].present?
      @professionals = @professionals.near(params[:query], 100)
    end
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    set_markers
  end
  def show
    @selected_sub_service = SubService.find_by(id: params[:sub_service_id])
    @professional = Professional.find(params[:id])
    set_markers
  end
  private
  def set_professional
  end
  def set_markers
    @markers = Professional.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end