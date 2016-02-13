class TripsController < ApplicationController

	def index
	@trips= Trip.all	
	end	

	def new
		@trip = Trip.new
		@owner_id = current_user.id
	end
	
	def create
		@trip= Trip.new(trip_params)
		@trip.owner_id= current_user.id
		if @trip.save
			flash[:success] = "You have posted a new trip!"
			redirect_to @trip
		else
			flash[:success] = "This trip has already been posted!"
		    render 'new'
		end	

	end

	def edit
	end

	def show
		@trip = Trip.find(params[:id])
		@user_id= @trip.owner_id
		@user= User.find_by(id: @user_id)
	end

	def update
	end

	def destroy
	end	
	def trip_params
		params.require(:trip).permit(:time, :source, :destination
                               )
	end	
end
