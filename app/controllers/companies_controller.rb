class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def index
  	@companies = Company.all
  end

  def show
  	@company = Company.find(params[:id])
  	# company = @company.pluck(:id)
  	# user = User.find(current_user.id)
  	# following = user.follow(company)
  	@jobs = Job.where(:company_id => params[:id])
  	
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
