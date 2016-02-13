class AdminsController < ApplicationController
	def index
		@admin = Admin.new
		
	end	
	def new 
	   @admin = Admin.new
	end
	
	def create
		@admin= Admin.new(admin_params)
		if @admin.save
			flash[:success] = "You have are now an admin!"
			redirect_to root_url	
		else
		    render 'new'
		 end 
		 @user1= User.find_by(email: @admin.admin_email)
		   if  @user1.nil? == false
			@user1.update_attribute("admin", true)
		   end	

	end	

	def admin_params
		params.require(:admin).permit(:admin_name , :admin_email, :admin_password)
                                   
	end	
end
