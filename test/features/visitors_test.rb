require "test_helper"

feature "Visitors" do
	before do 
		visit root_path
	end

  scenario "A new user sees when hits the page" do
	jobs.each do|job|
  		assert_content job.description
  		assert_content job.link
  		assert_content job.company.name
  		assert_content job.place
  		assert_content job.expiration
  		click_button "Open"
  		visit new_user_session_path
  	end
  end
end
