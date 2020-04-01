require 'test_helper'

class ServcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servcategory = servcategories(:one)
  end

  test "should get index" do
    get servcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_servcategory_url
    assert_response :success
  end

  test "should create servcategory" do
    assert_difference('Servcategory.count') do
      post servcategories_url, params: { servcategory: { category: @servcategory.category } }
    end

    assert_redirected_to servcategory_url(Servcategory.last)
  end

  test "should show servcategory" do
    get servcategory_url(@servcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_servcategory_url(@servcategory)
    assert_response :success
  end

  test "should update servcategory" do
    patch servcategory_url(@servcategory), params: { servcategory: { category: @servcategory.category } }
    assert_redirected_to servcategory_url(@servcategory)
  end

  test "should destroy servcategory" do
    assert_difference('Servcategory.count', -1) do
      delete servcategory_url(@servcategory)
    end

    assert_redirected_to servcategories_url
  end
end
