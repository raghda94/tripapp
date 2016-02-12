class TripsController < ApplicationController

	def index
	end	

	def new
		@trip = Trip.new
	end
	
	def create
		@trip= Trip.new(trip_params)
		if @trip.save
			flash[:success] = "You have posted a new trip!"
			redirect_to @trip
		else
		    render 'new'
		end	

	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end	
	def trip_params
		params.require(:trip).permit(:time, :source, :destination,
                                   :owner_id)
	end	
end
