class Company < ActiveRecord::Base
	has_many :job
	acts_as_followable
	
end
