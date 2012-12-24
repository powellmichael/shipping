class SearchController < ApplicationController
  def search_ship
  	@trips_search = Trip.search(params[:search])

  	respond_to do |format|
	  	if params[:trip] != nil
	  		@trips = @trips_search.where("trips.destination_port_id = ? && trips.departure_date > ?", params[:trip][:destination_port_id], Date.today.next_week)
	  		format.html 
      		format.json { render :json => @trips_search }
	  	else
      		format.html 
      		format.json { render :json => @trips_search }
	  	end
  	end
  end
end
