require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show 1st user" do
    get '/users/1'
    assert_response :success
  end

end
