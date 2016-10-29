require 'test_helper'

class WinepostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winepost = wineposts(:one)
  end

  test "should get index" do
    get wineposts_url
    assert_response :success
  end

  test "should get new" do
    get new_winepost_url
    assert_response :success
  end

  test "should create winepost" do
    assert_difference('Winepost.count') do
      post wineposts_url, params: { winepost: { name: @winepost.name } }
    end

    assert_redirected_to winepost_url(Winepost.last)
  end

  test "should show winepost" do
    get winepost_url(@winepost)
    assert_response :success
  end

  test "should get edit" do
    get edit_winepost_url(@winepost)
    assert_response :success
  end

  test "should update winepost" do
    patch winepost_url(@winepost), params: { winepost: { name: @winepost.name } }
    assert_redirected_to winepost_url(@winepost)
  end

  test "should destroy winepost" do
    assert_difference('Winepost.count', -1) do
      delete winepost_url(@winepost)
    end

    assert_redirected_to wineposts_url
  end
end
