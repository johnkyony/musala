class LocationsController < ApplicationController
  def index
  	@location = Location.all
  	@jobs = Job.order(posted: :desc).paginate(page: params[:page], per_page: 9)  
  end

  def show
  	@location = Location.all
  	location = Location.find(params[:id])
  	@jobs = Job.where(:place => location.name).order(posted: :desc).paginate(page: params[:page], per_page: 9)   
  	@location_name = location.name
  end
end
