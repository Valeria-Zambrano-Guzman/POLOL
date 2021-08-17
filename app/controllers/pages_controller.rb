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

  
  def show_profile_c
    @services = Service.all
  end

  def profile_p
    @users = User.all
    @services = Service.all
  end

  def accepted
    @users = User.all
    @services = Service.all
  end

  def rejected
    @users = User.all
    @services = Service.all
  end
end
