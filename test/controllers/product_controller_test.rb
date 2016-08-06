require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get men" do
    get product_men_url
    assert_response :success
  end

  test "should get women" do
    get product_women_url
    assert_response :success
  end

  test "should get boys" do
    get product_boys_url
    assert_response :success
  end

  test "should get girls" do
    get product_girls_url
    assert_response :success
  end

end
