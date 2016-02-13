class Admin < ActiveRecord::Base
	
	
	validates :admin_name, presence: true ,length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :admin_email, presence: true , length: { maximum: 255 } , format: { with: VALID_EMAIL_REGEX }, uniqueness: true , uniqueness: { case_sensitive: false }
     
    validates :admin_password, presence: true, length: { minimum: 6 }



end
