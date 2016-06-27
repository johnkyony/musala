require "test_helper"

describe LinkedinOauthSetting do
  let(:linkedin_oauth_setting) { LinkedinOauthSetting.new }

  it "must be valid" do
    value(linkedin_oauth_setting).must_be :valid?
  end
end
