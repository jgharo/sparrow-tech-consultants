require 'test_helper'

class InvstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invstatus = invstatuses(:one)
  end

  test "should get index" do
    get invstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_invstatus_url
    assert_response :success
  end

  test "should create invstatus" do
    assert_difference('Invstatus.count') do
      post invstatuses_url, params: { invstatus: { status: @invstatus.status } }
    end

    assert_redirected_to invstatus_url(Invstatus.last)
  end

  test "should show invstatus" do
    get invstatus_url(@invstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_invstatus_url(@invstatus)
    assert_response :success
  end

  test "should update invstatus" do
    patch invstatus_url(@invstatus), params: { invstatus: { status: @invstatus.status } }
    assert_redirected_to invstatus_url(@invstatus)
  end

  test "should destroy invstatus" do
    assert_difference('Invstatus.count', -1) do
      delete invstatus_url(@invstatus)
    end

    assert_redirected_to invstatuses_url
  end
end
