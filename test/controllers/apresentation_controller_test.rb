require 'test_helper'

class ApresentationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get apresentation_new_url
    assert_response :success
  end

end
