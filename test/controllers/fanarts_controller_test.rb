require 'test_helper'

class FanartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:boy_and_toad)
    @admin = admin_users(:admin)
    @regular = users(:regular)
  end

  test "should get index" do
    get fanarts_url
    assert_response :success
  end

  test "admin users can add fanart" do
    sign_in(@admin)
    assert_difference("Fanart.count", +1) do
      post admin_fanarts_url, params: {fanart: {author: "Random Artist"}}
    end
  end

  test "admin users can't add fanart with empty author attribute" do
    sign_in(@admin)
    assert_no_difference("Fanart.count") do
      post admin_fanarts_url, params: {fanart: {author: ""}}
    end
  end

  test "non logged users can't add fanart" do
    assert_no_difference("Fanart.count") do
      post admin_fanarts_url, params: {fanart: {author: "Random Artist"}}
      assert_redirected_to new_admin_user_session_url
    end
  end

end
