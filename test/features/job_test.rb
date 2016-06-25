require "test_helper"

feature "Job" do
  let(:john) { users(:john)  }
  let(:lena) { users(:lena) }
  let(:glen) { users(:glen) }
  let(:WWF) { jobs(:WWF) }
    before do
      sign_in_as glen
    end
  	scenario "John Must be able to see all jobs availabe" do
	  	jobs.each do|job|
	  		assert_content job.description
	  		assert_content job.link
	  		assert_content job.company.name
	  		assert_content job.place
	  		assert_content job.expiration
	  	end
  	end

  	scenario "John must be able to see more of the job when he clicks open"
  		within "id#{WWF.id}" do 
        click_button "Open"
      end     

  		assert_content WWF.description
      assert_content WWF.link
      assert_content WWF.place

    end

    scenario "John should be able to like a job" do 
      within "id#{WWF.id}" do 
        click_button "Like"
      end 
      assert_content "You have liked job #{WWF.company.name}"
      
    end

    scenario "John should be able to apply for a job"do
      within "id#{WWF.id}" do 
        click_button "apply"
      end
      assert_content "You have applied for this job"
    end

    scenario "John shouldn't be able to apply for a job if profile is not complete" do 
      within "id#{WWF.id}" do
        click_button "apply"
      end
      assert_content "You need complete your profile"

    end

end

