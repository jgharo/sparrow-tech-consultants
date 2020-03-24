require 'test_helper'

class ProdCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prod_category = prod_categories(:one)
  end

  test "should get index" do
    get prod_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_prod_category_url
    assert_response :success
  end

  test "should create prod_category" do
    assert_difference('ProdCategory.count') do
      post prod_categories_url, params: { prod_category: { prod_category: @prod_category.prod_category } }
    end

    assert_redirected_to prod_category_url(ProdCategory.last)
  end

  test "should show prod_category" do
    get prod_category_url(@prod_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_prod_category_url(@prod_category)
    assert_response :success
  end

  test "should update prod_category" do
    patch prod_category_url(@prod_category), params: { prod_category: { prod_category: @prod_category.prod_category } }
    assert_redirected_to prod_category_url(@prod_category)
  end

  test "should destroy prod_category" do
    assert_difference('ProdCategory.count', -1) do
      delete prod_category_url(@prod_category)
    end

    assert_redirected_to prod_categories_url
  end
end
