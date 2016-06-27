class UserFeedController < ApplicationController
  def index
  	company = Company.all
  	followess_id = current_user.followees(company)
  	 @activities = PublicActivity::Activity.order("created_at desc").where(owner_id: followess_id, owner_type: "Company")
  end
end
