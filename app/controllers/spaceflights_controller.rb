class SpaceflightsController < ApplicationController
  def index
    @spaceflights = Spaceflight.all
  end

  def list
    @spaceflights = Spaceflight.all
  end

  def new
    @spaceflight = Spaceflight.new
  end

  def create
    @spaceflight = Spaceflight.new(spaceflight_params)
    @spaceflight.user = current_user
    if @spaceflight.save
      redirect_to index_path
    else
      render :new
    end
  end

  def show
    @spaceflight = Spaceflight.find(params[:id])
  end

  def edit
    @spaceflight = Spaceflight.find(params[:id])
  end

  private

  def spaceflight_params
    params.require(:spaceflight).permit(:name, :duration, :overview, :cabin_class, :departure_location, :destination, :ship_image)
  end
end
