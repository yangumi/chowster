class PlacesController < ApplicationController

  def index
    # using kaminari
    @places = Place.page params[:page]
    # using paginate
    # @places = Place.all.paginate(:page => params[:page], :per_page => 3)
    
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
