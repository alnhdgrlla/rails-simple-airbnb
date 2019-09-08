require 'test_helper'

class FlatsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get flats_resources_url
    assert_response :success
  end

end
