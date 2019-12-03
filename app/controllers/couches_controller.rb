class CouchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :home]

  def home
  end

  def index
    @couches = Couch.all
  end

  def show
    @couch = Couch.find(params[:id])
  end

  def new
    @couch = Couch.new
  end

  def create
    @couch = Couch.new(couches_params)
    @couch.user = current_user
    if @couch.save
      redirect_to couch_path
    else
      render :new
    end
  end

  def couches_params
    params.require(:couch).permit(:address, :price, :photo)
  end
end
