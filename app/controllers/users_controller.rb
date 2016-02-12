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

	def user_params
		params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :home, :work)
	end	
end
