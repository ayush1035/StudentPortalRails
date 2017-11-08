class City < ActiveRecord::Base
	belongs_to :state
	belongs_to :country
	has_many :students
end
