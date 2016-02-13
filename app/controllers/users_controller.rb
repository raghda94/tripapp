class UsersController < ApplicationController
	def index
	end
	
	def new
		@user= User.new
	end

	def edit
	end

	def create
		@user= User.new(user_params)
		if @user.save
			flash[:success] = "You have signed up!"
			redirect_to @user
		else
		    render 'new'
		end	

	end
	
	def update
	end	

	def show
	end

	def destroy
	end	

	def join_trip
		@user= User.find(params[:id])
		if @user.update_attribute("joined_trips", @user.joined_trips + 1)
			redirect_to root_url
		else
			redirect_to trips_path
		end	

	end	

	def user_params
		params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :home, :work)
	end	
end
