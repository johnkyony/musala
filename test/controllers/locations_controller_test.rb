require "test_helper"

describe LocationsController do
  it "should get index" do
    get :index
    value(response).must_be :success?
  end

  it "should get show" do
    get :show
    value(response).must_be :success?
  end

end
