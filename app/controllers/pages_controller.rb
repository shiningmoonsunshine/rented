class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bookings = Booking.all
    def booked_or_not
      @bookings.each do |b|
        if b.user_id == current_user.id
          true
        else
          false
        end
      end
    end
  end


end
