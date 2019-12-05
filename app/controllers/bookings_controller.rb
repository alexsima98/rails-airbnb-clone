class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params)
  end

  def show
    @booking = Booking.find(params[:couch_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:couch_id, :user_id, :start_date, :end_date)
  end
end
