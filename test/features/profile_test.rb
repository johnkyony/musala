require "test_helper"

feature "Profile" do
  scenario "John should be able to fill in his Profile" do
    visit root_path
    page.must_have_content "Hello World"
    page.wont_have_content "Goodbye All!"
  end
end
