# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create 15 cab records
15.times do |i|
  Cab.create(
    name: "Cab #{i + 1}",
    license_plate: "ABC#{i + 123}",
    capacity: rand(4..6)
  )
end

# Create multiple bookings
Booking.create([
  { customer_name: "John Doe", pickup_location: "Location A", dropoff_location: "Location B", cab_id: 1 },
  { customer_name: "Jane Smith", pickup_location: "Location C", dropoff_location: "Location D", cab_id: 2 },
  { customer_name: "Michael Johnson", pickup_location: "Location E", dropoff_location: "Location F", cab_id: 3 },
  
  # { customer_name: "Customer Name", pickup_location: "Pickup Location", dropoff_location: "Dropoff Location", cab_id: <cab_id> },
])