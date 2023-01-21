class PagesController < ApplicationController
  def home
  end

  def dashboard
    @booking = Booking.find(params[:id])
    @clothe_id = @booking.clothe_id
    @clothe = Clothe.find(@clothe_id)
  end

end
