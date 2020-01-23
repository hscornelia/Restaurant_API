require 'test_helper'

class PricerangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricerange = priceranges(:one)
  end

  test "should get index" do
    get priceranges_url, as: :json
    assert_response :success
  end

  test "should create pricerange" do
    assert_difference('Pricerange.count') do
      post priceranges_url, params: { pricerange: { max: @pricerange.max, min: @pricerange.min } }, as: :json
    end

    assert_response 201
  end

  test "should show pricerange" do
    get pricerange_url(@pricerange), as: :json
    assert_response :success
  end

  test "should update pricerange" do
    patch pricerange_url(@pricerange), params: { pricerange: { max: @pricerange.max, min: @pricerange.min } }, as: :json
    assert_response 200
  end

  test "should destroy pricerange" do
    assert_difference('Pricerange.count', -1) do
      delete pricerange_url(@pricerange), as: :json
    end

    assert_response 204
  end
end
