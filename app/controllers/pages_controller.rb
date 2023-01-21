class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bookings = Booking.all
    @clothe_id = @booking.clothe_id
    @clothe = Clothe.find(@clothe_id)
  end

end
