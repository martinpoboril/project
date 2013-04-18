require 'test_helper'

class TravelersControllerTest < ActionController::TestCase
  setup do
    @traveler = travelers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travelers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traveler" do
    assert_difference('Traveler.count') do
      post :create, traveler: { date_of_your_trip: @traveler.date_of_your_trip, email: @traveler.email, first_name: @traveler.first_name, last_name: @traveler.last_name, number_of_people_traveling_with_you: @traveler.number_of_people_traveling_with_you, what_place_did_you_visit: @traveler.what_place_did_you_visit, what_transport_did_you_use: @traveler.what_transport_did_you_use }
    end

    assert_redirected_to traveler_path(assigns(:traveler))
  end

  test "should show traveler" do
    get :show, id: @traveler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traveler
    assert_response :success
  end

  test "should update traveler" do
    put :update, id: @traveler, traveler: { date_of_your_trip: @traveler.date_of_your_trip, email: @traveler.email, first_name: @traveler.first_name, last_name: @traveler.last_name, number_of_people_traveling_with_you: @traveler.number_of_people_traveling_with_you, what_place_did_you_visit: @traveler.what_place_did_you_visit, what_transport_did_you_use: @traveler.what_transport_did_you_use }
    assert_redirected_to traveler_path(assigns(:traveler))
  end

  test "should destroy traveler" do
    assert_difference('Traveler.count', -1) do
      delete :destroy, id: @traveler
    end

    assert_redirected_to travelers_path
  end
end
