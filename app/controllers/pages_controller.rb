class PagesController < ApplicationController
  def home
  end

  def uikit
  end


  def search
    @services = Service.all
    @sub_services = SubService.all
  end
end
