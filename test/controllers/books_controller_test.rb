require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:boy_and_toad)
    @admin = admin_users(:admin)
    @regular = users(:regular)
  end

  test "should get show" do
    get book_url(@book)
    assert_response :success
  end

  test "admin user can access admin panel" do
    post admin_user_session_url, params: {user: {admin_user_email: @admin.email, admin_user_password: "password"}}
    assert_response :success
  end

  test "admin user can edit book" do
    sign_in(@admin)
    put admin_book_url(@book), params: {book: {title: "The Boy and the Frog"}}
    @book.reload
    assert_equal "The Boy and the Frog", @book.title
  end

  test "admin user can't edit book with empty title attribute" do
    sign_in(@admin)
    put admin_book_url(@book), params: {book: {title: ""}}
    @book.reload
    assert_not_equal "", @book.title
  end

  test "admin user providing wrong password can't access admin panel" do
    post admin_user_session_url, params: {user: {admin_user_email: @admin.email, admin_user_password: "notmypassword"}}
    assert_response :success
    assert_select "div.flash", "Invalid Email or password."
  end

  test "redirected when trying to access admin panel" do
    get admin_root_url
    follow_redirect!
    assert_select "div.flash", "You need to sign in or sign up before continuing."
  end

  test "regular users are redirected if trying to access admin panel" do
    get admin_root_url
    assert_response :redirect
    follow_redirect!
    assert_select "div.flash", "You need to sign in or sign up before continuing."
  end
end
