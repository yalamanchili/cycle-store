require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
  end

end
