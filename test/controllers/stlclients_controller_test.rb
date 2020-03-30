require 'test_helper'

class StlclientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stlclient = stlclients(:one)
  end

  test "should get index" do
    get stlclients_url
    assert_response :success
  end

  test "should get new" do
    get new_stlclient_url
    assert_response :success
  end

  test "should create stlclient" do
    assert_difference('Stlclient.count') do
      post stlclients_url, params: { stlclient: { client_billingaddress: @stlclient.client_billingaddress, client_companyname: @stlclient.client_companyname, client_email: @stlclient.client_email, client_fname: @stlclient.client_fname, client_lname: @stlclient.client_lname, client_phonenumber: @stlclient.client_phonenumber, client_shippingaddress: @stlclient.client_shippingaddress, employee_id: @stlclient.employee_id } }
    end

    assert_redirected_to stlclient_url(Stlclient.last)
  end

  test "should show stlclient" do
    get stlclient_url(@stlclient)
    assert_response :success
  end

  test "should get edit" do
    get edit_stlclient_url(@stlclient)
    assert_response :success
  end

  test "should update stlclient" do
    patch stlclient_url(@stlclient), params: { stlclient: { client_billingaddress: @stlclient.client_billingaddress, client_companyname: @stlclient.client_companyname, client_email: @stlclient.client_email, client_fname: @stlclient.client_fname, client_lname: @stlclient.client_lname, client_phonenumber: @stlclient.client_phonenumber, client_shippingaddress: @stlclient.client_shippingaddress, employee_id: @stlclient.employee_id } }
    assert_redirected_to stlclient_url(@stlclient)
  end

  test "should destroy stlclient" do
    assert_difference('Stlclient.count', -1) do
      delete stlclient_url(@stlclient)
    end

    assert_redirected_to stlclients_url
  end
end
