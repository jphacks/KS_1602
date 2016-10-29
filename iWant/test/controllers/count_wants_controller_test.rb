require 'test_helper'

class CountWantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @count_want = count_wants(:one)
  end

  test "should get index" do
    get count_wants_url
    assert_response :success
  end

  test "should get new" do
    get new_count_want_url
    assert_response :success
  end

  test "should create count_want" do
    assert_difference('CountWant.count') do
      post count_wants_url, params: { count_want: { CATEGORY_ID: @count_want.CATEGORY_ID, COUNT: @count_want.COUNT, IDEA: @count_want.IDEA, TITLE: @count_want.TITLE } }
    end

    assert_redirected_to count_want_url(CountWant.last)
  end

  test "should show count_want" do
    get count_want_url(@count_want)
    assert_response :success
  end

  test "should get edit" do
    get edit_count_want_url(@count_want)
    assert_response :success
  end

  test "should update count_want" do
    patch count_want_url(@count_want), params: { count_want: { CATEGORY_ID: @count_want.CATEGORY_ID, COUNT: @count_want.COUNT, IDEA: @count_want.IDEA, TITLE: @count_want.TITLE } }
    assert_redirected_to count_want_url(@count_want)
  end

  test "should destroy count_want" do
    assert_difference('CountWant.count', -1) do
      delete count_want_url(@count_want)
    end

    assert_redirected_to count_wants_url
  end
end
