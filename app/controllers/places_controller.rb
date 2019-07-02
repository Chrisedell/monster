class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
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
    current_user.places.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end