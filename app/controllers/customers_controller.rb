class CustomersController < ApplicationController
    def show
        @customer = Customer.find(params[:id])
        set_markers
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
