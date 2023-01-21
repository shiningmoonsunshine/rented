class BookingsController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
  def index
    @bookings = Booking.all
=======
=======
>>>>>>> 7d3a6d1b45eec4c9efa775dd31f843c296f76144

  def show
    @booking = Booking.find(params[:id])
    @clothe_id = @booking.clothe.id
    @clothe = Clothe.find(@clothe_id)
<<<<<<< HEAD
>>>>>>> 7bc44fb895ed11a6e5e5a06d8a8bd8cfc90800eb
=======

>>>>>>> 7d3a6d1b45eec4c9efa775dd31f843c296f76144
  end

  def new
    @booking = Booking.new
    @clothe = Clothe.find(params[:clothe_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @clothe = Clothe.find(params[:clothe_id])
    @booking.user = current_user
    @booking.clothe = @clothe
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
