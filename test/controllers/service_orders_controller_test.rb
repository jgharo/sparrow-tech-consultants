require 'test_helper'

class ServiceOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_order = service_orders(:one)
  end

  test "should get index" do
    get service_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_service_order_url
    assert_response :success
  end

  test "should create service_order" do
    assert_difference('ServiceOrder.count') do
      post service_orders_url, params: { service_order: { invoice_id: @service_order.invoice_id, service_cost_total: @service_order.service_cost_total, stlservice_id: @service_order.stlservice_id } }
    end

    assert_redirected_to service_order_url(ServiceOrder.last)
  end

  test "should show service_order" do
    get service_order_url(@service_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_order_url(@service_order)
    assert_response :success
  end

  test "should update service_order" do
    patch service_order_url(@service_order), params: { service_order: { invoice_id: @service_order.invoice_id, service_cost_total: @service_order.service_cost_total, stlservice_id: @service_order.stlservice_id } }
    assert_redirected_to service_order_url(@service_order)
  end

  test "should destroy service_order" do
    assert_difference('ServiceOrder.count', -1) do
      delete service_order_url(@service_order)
    end

    assert_redirected_to service_orders_url
  end
end
