class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def index
  	@companies = Company.all.paginate(page: params[:page], per_page: 10)
  end

  def show
  	@company = Company.find(params[:id])
  	@jobs = Job.where(:company_id => params[:id]).order(posted: :desc).paginate(page: params[:page], per_page: 10) 
  	
  end

  def follow
    @company = Company.find(params[:id])
    current_user.follow!(@company)
    redirect_to :back ,:notice => "You are now following #{@company.name}"
  end

  def unfollow
    @company = Company.find(params[:id])
    current_user.unfollow!(@company)

    redirect_to :back ,:notice => "You  unfollowed #{@company.name}"
  end

  
end
