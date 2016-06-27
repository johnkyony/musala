require "test_helper"

describe FullProfile do
  let(:full_profile) { FullProfile.new }

  it "must be valid" do
    value(full_profile).must_be :valid?
  end
end
