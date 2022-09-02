class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.spaceflight = Spaceflight.find(params[:spaceflight_id])
    @booking.save
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.delete
      redirect_to root_path
    else
      render :destroy
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
