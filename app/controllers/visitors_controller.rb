class VisitorsController < ApplicationController
	def index
  		@jobs = Job.all 
  	end
end
