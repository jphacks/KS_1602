require 'test_helper'

class ListGoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_good = list_goods(:one)
  end

  test "should get index" do
    get list_goods_url
    assert_response :success
  end

  test "should get new" do
    get new_list_good_url
    assert_response :success
  end

  test "should create list_good" do
    assert_difference('ListGood.count') do
      post list_goods_url, params: { list_good: { COUNT: @list_good.COUNT, NAME: @list_good.NAME, USER_ID: @list_good.USER_ID, WANT_ID: @list_good.WANT_ID } }
    end

    assert_redirected_to list_good_url(ListGood.last)
  end

  test "should show list_good" do
    get list_good_url(@list_good)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_good_url(@list_good)
    assert_response :success
  end

  test "should update list_good" do
    patch list_good_url(@list_good), params: { list_good: { COUNT: @list_good.COUNT, NAME: @list_good.NAME, USER_ID: @list_good.USER_ID, WANT_ID: @list_good.WANT_ID } }
    assert_redirected_to list_good_url(@list_good)
  end

  test "should destroy list_good" do
    assert_difference('ListGood.count', -1) do
      delete list_good_url(@list_good)
    end

    assert_redirected_to list_goods_url
  end
end
