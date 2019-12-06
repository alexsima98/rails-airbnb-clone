class BookingsController < ApplicationController
  def new
    @couch = Couch.find(params[:couch_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def datepicker_input form, field
    content_tag :td, :data => { :provide => 'datepicker', 'date-format' => 'yyyy-mm-dd', 'date-autoclose' => 'true' } do
      form.text_field field, class: 'form-control', placeholder: 'YYYY-MM-DD'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:couch_id, :start_date, :end_date)
  end
end

