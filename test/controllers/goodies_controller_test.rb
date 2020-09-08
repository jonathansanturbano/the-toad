require 'test_helper'

class GoodiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get goodies_index_url
    assert_response :success
  end

  test "should get show" do
    get goodies_show_url
    assert_response :success
  end

end
