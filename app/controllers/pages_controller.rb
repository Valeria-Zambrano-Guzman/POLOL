class PagesController < ApplicationController
  def home
  end

  def uikit
  end

  def type
  end

  def search
    @services = Service.all
  end

  def result
  end
  
  def show
    @services = Service.all
  end

end
