require "test_helper"

feature "Companies" do
  let(:john) { users(:john)  }
  let(:lena) { users(:lena) }
  let(:glen) { users(:glen) }
  let(:WWF) { jobs(:WWF) }
  let(:WWF_companies) {comapies(:WWF)}
    before do
      sign_in_as glen
      click_link "Companies"
    end
  scenario "Glen should be able to see all the companies" do
    
    companies.each do |company|
     assert_content company.name
    end
  end

  scenario "Glen should be able to see all the jobs that a company is offering" do 
    
    within "#{WWF_companies.id}" do
      click_link "Open"
    end
    company.jobs.each do |job|
      assert_content job.description
      assert_content job.link
      assert_content job.expiration
    end
  end

  scenario "Glen should be able to follow a specific company" do 
     within "#{WWF_companies.id}" do
      click_link "Open"
    end
    click_button "Follow"

    assert_content "You are now following #{WWF_companies.name}"
    assert_content "following"
  end

end
