require 'test_helper'

class FanartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fanarts_index_url
    assert_response :success
  end

end
