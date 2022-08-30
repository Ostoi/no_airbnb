class SpaceflightsController < ApplicationController
  def index
    @spaceflights = Spaceflight.all
  end

  def new
    @spaceflight = Spaceflight.new
  end

  def create
  end

  def show
    @spaceflight = Spaceflight.find(params[:id])
  end
end
