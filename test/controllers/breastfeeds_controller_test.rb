require 'test_helper'

class BreastfeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breastfeed = breastfeeds(:one)
  end

  test "should get index" do
    get breastfeeds_url
    assert_response :success
  end

  test "should get new" do
    get new_breastfeed_url
    assert_response :success
  end

  test "should create breastfeed" do
    assert_difference('Breastfeed.count') do
      post breastfeeds_url, params: { breastfeed: { baby_id: @breastfeed.baby_id, feed_time: @breastfeed.feed_time, volume: @breastfeed.volume } }
    end

    assert_redirected_to breastfeed_url(Breastfeed.last)
  end

  test "should show breastfeed" do
    get breastfeed_url(@breastfeed)
    assert_response :success
  end

  test "should get edit" do
    get edit_breastfeed_url(@breastfeed)
    assert_response :success
  end

  test "should update breastfeed" do
    patch breastfeed_url(@breastfeed), params: { breastfeed: { baby_id: @breastfeed.baby_id, feed_time: @breastfeed.feed_time, volume: @breastfeed.volume } }
    assert_redirected_to breastfeed_url(@breastfeed)
  end

  test "should destroy breastfeed" do
    assert_difference('Breastfeed.count', -1) do
      delete breastfeed_url(@breastfeed)
    end

    assert_redirected_to breastfeeds_url
  end
end
