require 'test_helper'

class ProdstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodstatus = prodstatuses(:one)
  end

  test "should get index" do
    get prodstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_prodstatus_url
    assert_response :success
  end

  test "should create prodstatus" do
    assert_difference('Prodstatus.count') do
      post prodstatuses_url, params: { prodstatus: { status: @prodstatus.status } }
    end

    assert_redirected_to prodstatus_url(Prodstatus.last)
  end

  test "should show prodstatus" do
    get prodstatus_url(@prodstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodstatus_url(@prodstatus)
    assert_response :success
  end

  test "should update prodstatus" do
    patch prodstatus_url(@prodstatus), params: { prodstatus: { status: @prodstatus.status } }
    assert_redirected_to prodstatus_url(@prodstatus)
  end

  test "should destroy prodstatus" do
    assert_difference('Prodstatus.count', -1) do
      delete prodstatus_url(@prodstatus)
    end

    assert_redirected_to prodstatuses_url
  end
end
