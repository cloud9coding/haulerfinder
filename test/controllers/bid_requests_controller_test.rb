require 'test_helper'

class BidRequestsControllerTest < ActionController::TestCase
  setup do
    @bid_request = bid_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bid_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bid_request" do
    assert_difference('BidRequest.count') do
      post :create, bid_request: { drop_off_city_state: @bid_request.drop_off_city_state, drop_off_date: @bid_request.drop_off_date, drop_off_street: @bid_request.drop_off_street, drop_off_time: @bid_request.drop_off_time, drop_off_zip: @bid_request.drop_off_zip, pick_up_city_state: @bid_request.pick_up_city_state, pick_up_date: @bid_request.pick_up_date, pick_up_street: @bid_request.pick_up_street, pick_up_time: @bid_request.pick_up_time, pick_up_zip: @bid_request.pick_up_zip, user_id: @bid_request.user_id }
    end

    assert_redirected_to bid_request_path(assigns(:bid_request))
  end

  test "should show bid_request" do
    get :show, id: @bid_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bid_request
    assert_response :success
  end

  test "should update bid_request" do
    patch :update, id: @bid_request, bid_request: { drop_off_city_state: @bid_request.drop_off_city_state, drop_off_date: @bid_request.drop_off_date, drop_off_street: @bid_request.drop_off_street, drop_off_time: @bid_request.drop_off_time, drop_off_zip: @bid_request.drop_off_zip, pick_up_city_state: @bid_request.pick_up_city_state, pick_up_date: @bid_request.pick_up_date, pick_up_street: @bid_request.pick_up_street, pick_up_time: @bid_request.pick_up_time, pick_up_zip: @bid_request.pick_up_zip, user_id: @bid_request.user_id }
    assert_redirected_to bid_request_path(assigns(:bid_request))
  end

  test "should destroy bid_request" do
    assert_difference('BidRequest.count', -1) do
      delete :destroy, id: @bid_request
    end

    assert_redirected_to bid_requests_path
  end
end
