require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get home" do
  	get root_url
  	assert_response :success
  end

  test "should get about" do
  	get welcome_about_url
  	assert_response :success
  end
end
