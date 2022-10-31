require 'test_helper'

class ResidentialControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get residential_page_url
    assert_response :success
  end

end
