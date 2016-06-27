require "test_helper"

describe Position do
  let(:position) { Position.new }

  it "must be valid" do
    value(position).must_be :valid?
  end
end
