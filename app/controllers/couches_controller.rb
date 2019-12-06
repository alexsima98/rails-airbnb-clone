class CouchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :home]

  def home
  end

  def index
    if params[:query].present?
      @couches = Couch.geocoded.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @couches = Couch.geocoded
    end
    @markers = @couches.map do |couch|
      {
        lat: couch.latitude,
        lng: couch.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { couch: couch })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @couch = Couch.find(params[:id])
    @booking = Booking.new
  end

  def new
    @couch = Couch.new
  end

  def create
    @couch = Couch.new(couches_params)
    @couch.user = current_user
    if @couch.save
      redirect_to couch_path(@couch)
    else
      render :new
    end
  end

  private

  def couches_params
    params.require(:couch).permit(:address, :price, :photo, :title, :description)
  end
end
