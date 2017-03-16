require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get new when not signed in" do
    get articles_new_url
    assert_redirected_to new_user_session_path
  end

  # test "should post create when not signed in" do
  #   post articles_create_url
  #   assert_response new_user_session_path
  # end

  test "should get index" do
    get articles_index_url
    assert_response :success
  end

end
