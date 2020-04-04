require 'test_helper'

class TransportationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transportation = transportations(:one)
  end

  test "should get index" do
    get transportations_url
    assert_response :success
  end

  test "should get new" do
    get new_transportation_url
    assert_response :success
  end

  test "should create transportation" do
    assert_difference('Transportation.count') do
      post transportations_url, params: { transportation: { date_modified: @transportation.date_modified, servcategory_id: @transportation.servcategory_id, service_cost: @transportation.service_cost, service_description: @transportation.service_description, service_name: @transportation.service_name, servstatus_id: @transportation.servstatus_id, supporting_company_id: @transportation.supporting_company_id } }
    end

    assert_redirected_to transportation_url(Transportation.last)
  end

  test "should show transportation" do
    get transportation_url(@transportation)
    assert_response :success
  end

  test "should get edit" do
    get edit_transportation_url(@transportation)
    assert_response :success
  end

  test "should update transportation" do
    patch transportation_url(@transportation), params: { transportation: { date_modified: @transportation.date_modified, servcategory_id: @transportation.servcategory_id, service_cost: @transportation.service_cost, service_description: @transportation.service_description, service_name: @transportation.service_name, servstatus_id: @transportation.servstatus_id, supporting_company_id: @transportation.supporting_company_id } }
    assert_redirected_to transportation_url(@transportation)
  end

  test "should destroy transportation" do
    assert_difference('Transportation.count', -1) do
      delete transportation_url(@transportation)
    end

    assert_redirected_to transportations_url
  end
end
