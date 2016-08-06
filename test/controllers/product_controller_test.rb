require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
test "should get men" do
    get men_path
    assert_response :success
    assert_select "title", "Mens Shirts"
  end 
  
  test "should get women" do
    get women_path
    assert_response :success
    assert_select "title", "Womens Shirts"
  end 
  
  test "should get boys" do
    get boys_path
    assert_response :success
    assert_select "title", "Boys Shirts"
  end 
  
  test "should get girls" do
    get girls_path
    assert_response :success
    assert_select "title", "Girls Shirts"
  end 

end
