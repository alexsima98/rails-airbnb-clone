class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :accept, :decline, :cancel]
  def new
    @couch = Couch.find(params[:couch_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.couch = Couch.find(params[:couch_id])
    if @booking.save
      redirect_to :controller => 'dashboard', :action => 'show'
    else
      render :new
    end
  end

  def show
  end

  def accept
    @booking.update(status: "accepted")
    redirect_to dashboard_path
  end

  def decline
    @booking.update(status: "declined")
    redirect_to dashboard_path
  end

  def cancel
    @booking.update(status: "canceled")
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
