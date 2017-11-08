class Student < ActiveRecord::Base
	belongs_to :country
	belongs_to :state
	belongs_to :city	

	comma do 
		id
		name
		dob
		email
		phone
		country_id
		state_id
		city_id
		course
		
	end

	 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
