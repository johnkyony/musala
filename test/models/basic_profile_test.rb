require "test_helper"

describe BasicProfile do
  let(:basic_profile) { BasicProfile.new }

  it "must be valid" do
    value(basic_profile).must_be :valid?
  end
end
