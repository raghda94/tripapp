class Trip < ActiveRecord::Base
	belongs_to :user
	validates :trip_date , :presence => true
	
	validates :source , :presence => true 
	validates :destination , :presence => true 
	validates :owner_id , :presence => true


end
