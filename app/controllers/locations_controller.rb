class LocationsController < ApplicationController
  def index
  	@location = Location.all
  	@jobs = Job.all
  end

  def show
  	@location = Location.all
  	location = Location.find(params[:id])
  	@jobs = Job.where(:place => location.name)
  end
end
