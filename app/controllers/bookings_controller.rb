class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @clothe_id = @booking.clothe.id
    @clothe = Clothe.find(@clothe_id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
