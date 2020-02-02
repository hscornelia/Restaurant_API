require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get restaurants_url, as: :json
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { address: @restaurant.address, business_hour: @restaurant.business_hour, category_id: @restaurant.category_id, coordinate: @restaurant.coordinate, location_id: @restaurant.location_id, name: @restaurant.name, parking_space: @restaurant.parking_space, picture_id: @restaurant.picture_id, point_id: @restaurant.point_id, pricerange_id: @restaurant.pricerange_id, tag_id: @restaurant.tag_id } }, as: :json
    end

    assert_response 201
  end

  test "should show restaurant" do
    get restaurant_url(@restaurant), as: :json
    assert_response :success
  end

  test "should update restaurant" do
    patch restaurant_url(@restaurant), params: { restaurant: { address: @restaurant.address, business_hour: @restaurant.business_hour, category_id: @restaurant.category_id, coordinate: @restaurant.coordinate, location_id: @restaurant.location_id, name: @restaurant.name, parking_space: @restaurant.parking_space, picture_id: @restaurant.picture_id, point_id: @restaurant.point_id, pricerange_id: @restaurant.pricerange_id, tag_id: @restaurant.tag_id } }, as: :json
    assert_response 200
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete restaurant_url(@restaurant), as: :json
    end

    assert_response 204
  end
end
