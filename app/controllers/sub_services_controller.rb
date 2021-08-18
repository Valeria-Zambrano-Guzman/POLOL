class SubServicesController < ApplicationController
    def show
        @sub_service = SubService.find(params[:id])
        respond_to do |format|
            format.json { render json: { sub_service: @sub_service } }
        end
    end
end
