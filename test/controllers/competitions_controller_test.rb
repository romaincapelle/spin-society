require "test_helper"

class CompetitionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get competitions_new_url
    assert_response :success
  end
end
