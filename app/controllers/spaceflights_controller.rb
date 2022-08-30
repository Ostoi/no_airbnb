class SpaceflightsController < ApplicationController
  def show
    @spaceflight = Spaceflight.find(params[:id])
  end
end
