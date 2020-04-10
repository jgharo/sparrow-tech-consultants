require 'test_helper'

class TaxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax = taxes(:one)
  end

  test "should get index" do
    get taxes_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_url
    assert_response :success
  end

  test "should create tax" do
    assert_difference('Tax.count') do
      post taxes_url, params: { tax: { name: @tax.name, rate: @tax.rate } }
    end

    assert_redirected_to tax_url(Tax.last)
  end

  test "should show tax" do
    get tax_url(@tax)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_url(@tax)
    assert_response :success
  end

  test "should update tax" do
    patch tax_url(@tax), params: { tax: { name: @tax.name, rate: @tax.rate } }
    assert_redirected_to tax_url(@tax)
  end

  test "should destroy tax" do
    assert_difference('Tax.count', -1) do
      delete tax_url(@tax)
    end

    assert_redirected_to taxes_url
  end
end
