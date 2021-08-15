class ServicesController < ApplicationController

  def new
    @services = Service.all
  end
    
end
