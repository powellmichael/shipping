class SearchController < ApplicationController
  def search_ship
  	@trips_search = Trip.search(params[:search])

    @trip = Trip.new

  	respond_to do |format|
	  	if params[:trip] != nil
        @trips = Trip.joins(:origin_port).where(:ports => {:country => params[:origin_port][:country]}).joins(:destination_port).where(:destination_ports_trips => {:country => params[:destination_port][:country]}).search(params[:search])
        
        if @trips.count > 0
          @trips = @trips.where("trips.departure_date > ?", Date.today.next_week)
        end
        
        @trip.origin_port_id = params[:trip][:origin_port_id]
        @trip.destination_port_id = params[:trip][:destination_port_id]  
        
        @origin_port = Port.new
        @origin_port.country = params[:origin_port][:country]
        
        @destination_port = Port.new
        @destination_port.country = params[:destination_port][:country]
        
        format.html 
      	format.json { render :json => @trips }
	  	else
      	format.html 
      	format.json { render :json => @trips }
	  	end
  	end
  end
end
