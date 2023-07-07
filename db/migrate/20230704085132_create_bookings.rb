class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :customer_name
      t.string :pickup_location
      t.string :dropoff_location
      t.references :cab, null: false, foreign_key: true

      t.timestamps
    end
  end
end
