require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get welcome_show_url
    assert_response :success
  end

  test "should get show_gossip" do
    get welcome_show_gossip_url
    assert_response :success
  end

  test "should get display_gossip" do
    get welcome_display_gossip_url
    assert_response :success
  end

  test "should get display_user" do
    get welcome_display_user_url
    assert_response :success
  end

end
