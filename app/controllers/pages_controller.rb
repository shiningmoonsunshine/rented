class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bookings = Booking.all
  end

end
