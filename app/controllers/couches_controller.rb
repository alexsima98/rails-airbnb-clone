class CouchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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
    # remember to change to show
    @couch.user = current_user
    if @couch.save
      redirect_to couches_path
    else
      render :new
    end
  end

  def couches_params
    params.require(:couch).permit(:address, :price)
  end
end
