class UserCompaniesController < ApplicationController
  before_action :authenticate_user!
  def index  
  	company = Company.all
  	@my_companies = current_user.followees(company)
  end
end
