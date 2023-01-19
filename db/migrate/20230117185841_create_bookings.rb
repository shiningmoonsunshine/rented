class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :clothe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
