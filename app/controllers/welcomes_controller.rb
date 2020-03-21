class WelcomesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def leaflet
  end
end
