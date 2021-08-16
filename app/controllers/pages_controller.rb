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

  def profile_p
    @users = User.all
    @services = Service.all
  end
end
