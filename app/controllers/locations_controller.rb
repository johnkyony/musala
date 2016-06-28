class LocationsController < ApplicationController
  def index
  	@location = Location.all
  	@jobs = Job.order(posted: :desc) 
  end

  def show
  	@location = Location.all
  	location = Location.find(params[:id])
  	@jobs = Job.where(:place => location.name).order(posted: :desc) 
  end
end
