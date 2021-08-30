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
    @markers = @professionals.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @selected_sub_service = SubService.find_by(id: params[:sub_service_id])
    # @review = Review.new(Professional: @list)
  end

  private

  def set_professional
    @professional = Professional.find(params[:id])
  end


end
