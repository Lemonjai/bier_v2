require 'test_helper'

class WinecoloursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winecolour = winecolours(:one)
  end

  test "should get index" do
    get winecolours_url
    assert_response :success
  end

  test "should get new" do
    get new_winecolour_url
    assert_response :success
  end

  test "should create winecolour" do
    assert_difference('Winecolour.count') do
      post winecolours_url, params: { winecolour: { hexcode: @winecolour.hexcode, name: @winecolour.name } }
    end

    assert_redirected_to winecolour_url(Winecolour.last)
  end

  test "should show winecolour" do
    get winecolour_url(@winecolour)
    assert_response :success
  end

  test "should get edit" do
    get edit_winecolour_url(@winecolour)
    assert_response :success
  end

  test "should update winecolour" do
    patch winecolour_url(@winecolour), params: { winecolour: { hexcode: @winecolour.hexcode, name: @winecolour.name } }
    assert_redirected_to winecolour_url(@winecolour)
  end

  test "should destroy winecolour" do
    assert_difference('Winecolour.count', -1) do
      delete winecolour_url(@winecolour)
    end

    assert_redirected_to winecolours_url
  end
end
