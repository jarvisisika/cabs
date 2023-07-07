class CabsController < ApplicationController
  def index
    @cabs = Cab.all
    render json: @cabs
  end
end