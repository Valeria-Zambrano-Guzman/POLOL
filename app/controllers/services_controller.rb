class ServicesController < ApplicationController
    def show
        @service = Service.find(params[:id])
        respond_to do |format|
            format.json { render json: { service: @service } }
        end
    end
end
