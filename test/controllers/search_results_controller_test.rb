require 'test_helper'

class SearchResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get search_results_create_url
    assert_response :success
  end

end
