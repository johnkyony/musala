require "test_helper"

describe Education do
  let(:education) { Education.new }

  it "must be valid" do
    value(education).must_be :valid?
  end
end
