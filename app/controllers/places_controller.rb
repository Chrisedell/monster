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

end