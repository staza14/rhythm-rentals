class AddColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :booking_date, :string
  end
end
