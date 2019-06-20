class PlacesController < ApplicationController
  ## perform a paginated query:
#@places = Place.paginate(:page => params[:page])

# or, use an explicit "per page" limit:


## render page links in the view:
#<%= will_paginate @places %>

  def index
    @places = Place.paginate(page: params[:page]) 
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end