require 'test_helper'

class FundHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fund_history = fund_histories(:one)
  end

  test "should get index" do
    get fund_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_fund_history_url
    assert_response :success
  end

  test "should create fund_history" do
    assert_difference('FundHistory.count') do
      post fund_histories_url, params: { fund_history: { date: @fund_history.date, nav: @fund_history.nav } }
    end

    assert_redirected_to fund_history_url(FundHistory.last)
  end

  test "should show fund_history" do
    get fund_history_url(@fund_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_fund_history_url(@fund_history)
    assert_response :success
  end

  test "should update fund_history" do
    patch fund_history_url(@fund_history), params: { fund_history: { date: @fund_history.date, nav: @fund_history.nav } }
    assert_redirected_to fund_history_url(@fund_history)
  end

  test "should destroy fund_history" do
    assert_difference('FundHistory.count', -1) do
      delete fund_history_url(@fund_history)
    end

    assert_redirected_to fund_histories_url
  end
end
