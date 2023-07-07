class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      render json: @booking, status: :created
    else
      render json: @booking.errors.full_messages, status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    if @booking.nil?
      render json: { error: "Booking not found" }, status: :not_found
    else
      render json: @booking
    end
  end

  def destroy
    if @booking.nil?
      render json: { error: "Booking not found" }, status: :not_found
    elsif @booking.destroy
      render json: { message: "Booking deleted successfully" }
    else
      render json: { error: "Failed to delete booking" }, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find_by(id: params[:id])
  end

  def booking_params
    params.require(:booking).permit(:customer_name, :pickup_location, :dropoff_location, :cab_id)
  end
end
