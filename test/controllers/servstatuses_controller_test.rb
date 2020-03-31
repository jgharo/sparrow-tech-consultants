require 'test_helper'

class ServstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servstatus = servstatuses(:one)
  end

  test "should get index" do
    get servstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_servstatus_url
    assert_response :success
  end

  test "should create servstatus" do
    assert_difference('Servstatus.count') do
      post servstatuses_url, params: { servstatus: { status: @servstatus.status } }
    end

    assert_redirected_to servstatus_url(Servstatus.last)
  end

  test "should show servstatus" do
    get servstatus_url(@servstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_servstatus_url(@servstatus)
    assert_response :success
  end

  test "should update servstatus" do
    patch servstatus_url(@servstatus), params: { servstatus: { status: @servstatus.status } }
    assert_redirected_to servstatus_url(@servstatus)
  end

  test "should destroy servstatus" do
    assert_difference('Servstatus.count', -1) do
      delete servstatus_url(@servstatus)
    end

    assert_redirected_to servstatuses_url
  end
end
