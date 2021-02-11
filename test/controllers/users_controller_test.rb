require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get user_login" do
    get users_user_login_url
    assert_response :success
  end

  test "should get user_home" do
    get users_user_home_url
    assert_response :success
  end

end
