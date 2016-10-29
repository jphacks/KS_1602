require 'test_helper'

class WanTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @want = wants(:one)
  end

  test "should get index" do
    get wants_index_url
    assert_response :success
  end

  test "should get new" do
    get new_want_url
    assert_response :success
  end

  test "should create want" do
    assert_difference('Wants.count') do
      post wants_index_url, params: { want: { CATEGORY_ID: @want.CATEGORY_ID, COMMENT: @want.COMMENT, GOOD: @want.GOOD, MERIDIAN: @want.MERIDIAN, TITLE: @want.TITLE, USER_ID: @want.USER_ID, WEFL: @want.WEFL } }
    end

    assert_redirected_to want_url(Wants.last)
  end

  test "should show want" do
    get want_url(@want)
    assert_response :success
  end

  test "should get edit" do
    get edit_want_url(@want)
    assert_response :success
  end

  test "should update want" do
    patch want_url(@want), params: { want: { CATEGORY_ID: @want.CATEGORY_ID, COMMENT: @want.COMMENT, GOOD: @want.GOOD, MERIDIAN: @want.MERIDIAN, TITLE: @want.TITLE, USER_ID: @want.USER_ID, WEFL: @want.WEFL } }
    assert_redirected_to want_url(@want)
  end

  test "should destroy want" do
    assert_difference('Wants.count', -1) do
      delete want_url(@want)
    end

    assert_redirected_to wants_index_url
  end
end
