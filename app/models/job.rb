class Job < ActiveRecord::Base
  belongs_to :company
  acts_as_likeable
  
end
