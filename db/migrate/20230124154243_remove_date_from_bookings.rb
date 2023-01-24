class RemoveDateFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :date, :datetime
  end
end
