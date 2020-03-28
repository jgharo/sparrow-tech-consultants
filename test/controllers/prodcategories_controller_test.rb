require 'test_helper'

class ProdcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodcategory = prodcategories(:one)
  end

  test "should get index" do
    get prodcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_prodcategory_url
    assert_response :success
  end

  test "should create prodcategory" do
    assert_difference('Prodcategory.count') do
      post prodcategories_url, params: { prodcategory: { category: @prodcategory.category } }
    end

    assert_redirected_to prodcategory_url(Prodcategory.last)
  end

  test "should show prodcategory" do
    get prodcategory_url(@prodcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodcategory_url(@prodcategory)
    assert_response :success
  end

  test "should update prodcategory" do
    patch prodcategory_url(@prodcategory), params: { prodcategory: { category: @prodcategory.category } }
    assert_redirected_to prodcategory_url(@prodcategory)
  end

  test "should destroy prodcategory" do
    assert_difference('Prodcategory.count', -1) do
      delete prodcategory_url(@prodcategory)
    end

    assert_redirected_to prodcategories_url
  end
end
