class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to index_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.delete
      redirect_to root_path
    else
      render :destroy
    end
  end
end
