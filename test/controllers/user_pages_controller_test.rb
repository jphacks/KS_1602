require 'test_helper'

class UserPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_page = user_pages(:one)
  end

  test "should get index" do
    get user_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_user_page_url
    assert_response :success
  end

  test "should create user_page" do
    assert_difference('UserPage.count') do
      post user_pages_url, params: { user_page: {  } }
    end

    assert_redirected_to user_page_url(UserPage.last)
  end

  test "should show user_page" do
    get user_page_url(@user_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_page_url(@user_page)
    assert_response :success
  end

  test "should update user_page" do
    patch user_page_url(@user_page), params: { user_page: {  } }
    assert_redirected_to user_page_url(@user_page)
  end

  test "should destroy user_page" do
    assert_difference('UserPage.count', -1) do
      delete user_page_url(@user_page)
    end

    assert_redirected_to user_pages_url
  end
end
