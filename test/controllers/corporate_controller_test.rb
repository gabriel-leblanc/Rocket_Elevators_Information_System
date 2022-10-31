require 'test_helper'

class CorporateControllerTest < ActionDispatch::IntegrationTest
  test "should get site" do
    get corporate_site_url
    assert_response :success
  end

end
