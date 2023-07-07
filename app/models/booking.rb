class Booking < ApplicationRecord
  belongs_to :cab

  validates :customer_name, :pickup_location, :dropoff_location, presence: true
  validate :validate_cab_availability, :validate_customer_booking

  private

  def validate_cab_availability
    if cab&.bookings&.any?
      errors.add(:cab, 'is already booked')
    end
  end

  def validate_customer_booking
    if Booking.exists?(customer_name: customer_name)
      errors.add(:customer_name, 'has already made a booking')
    end
  end
end
