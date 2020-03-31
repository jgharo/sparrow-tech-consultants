require 'test_helper'

class StlservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stlservice = stlservices(:one)
  end

  test "should get index" do
    get stlservices_url
    assert_response :success
  end

  test "should get new" do
    get new_stlservice_url
    assert_response :success
  end

  test "should create stlservice" do
    assert_difference('Stlservice.count') do
      post stlservices_url, params: { stlservice: { date_modified: @stlservice.date_modified, servcategory_id: @stlservice.servcategory_id, service_cost: @stlservice.service_cost, service_description: @stlservice.service_description, service_name: @stlservice.service_name, servstatus_id: @stlservice.servstatus_id } }
    end

    assert_redirected_to stlservice_url(Stlservice.last)
  end

  test "should show stlservice" do
    get stlservice_url(@stlservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_stlservice_url(@stlservice)
    assert_response :success
  end

  test "should update stlservice" do
    patch stlservice_url(@stlservice), params: { stlservice: { date_modified: @stlservice.date_modified, servcategory_id: @stlservice.servcategory_id, service_cost: @stlservice.service_cost, service_description: @stlservice.service_description, service_name: @stlservice.service_name, servstatus_id: @stlservice.servstatus_id } }
    assert_redirected_to stlservice_url(@stlservice)
  end

  test "should destroy stlservice" do
    assert_difference('Stlservice.count', -1) do
      delete stlservice_url(@stlservice)
    end

    assert_redirected_to stlservices_url
  end
end
