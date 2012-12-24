require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get search_ship" do
    get :search_ship
    assert_response :success
  end

end
