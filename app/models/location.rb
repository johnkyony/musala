class Location < ActiveRecord::Base
	has_many :job
	has_many :company
end
