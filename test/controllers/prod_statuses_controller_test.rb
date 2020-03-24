require 'test_helper'

class ProdStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prod_status = prod_statuses(:one)
  end

  test "should get index" do
    get prod_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_prod_status_url
    assert_response :success
  end

  test "should create prod_status" do
    assert_difference('ProdStatus.count') do
      post prod_statuses_url, params: { prod_status: { prod_status: @prod_status.prod_status } }
    end

    assert_redirected_to prod_status_url(ProdStatus.last)
  end

  test "should show prod_status" do
    get prod_status_url(@prod_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_prod_status_url(@prod_status)
    assert_response :success
  end

  test "should update prod_status" do
    patch prod_status_url(@prod_status), params: { prod_status: { prod_status: @prod_status.prod_status } }
    assert_redirected_to prod_status_url(@prod_status)
  end

  test "should destroy prod_status" do
    assert_difference('ProdStatus.count', -1) do
      delete prod_status_url(@prod_status)
    end

    assert_redirected_to prod_statuses_url
  end
end
