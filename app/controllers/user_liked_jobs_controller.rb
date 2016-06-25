class UserLikedJobsController < ApplicationController
	before_action :authenticate_user!
  def index
  	job = Job.all
  	@my_jobs = current_user.likees(job)
  end
end
