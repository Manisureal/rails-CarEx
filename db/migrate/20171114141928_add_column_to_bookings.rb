class AddColumnToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :booked_time, :datetime
    add_column :bookings, :status, :boolean
  end
end
