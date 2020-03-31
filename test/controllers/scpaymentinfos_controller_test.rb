require 'test_helper'

class ScpaymentinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scpaymentinfo = scpaymentinfos(:one)
  end

  test "should get index" do
    get scpaymentinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_scpaymentinfo_url
    assert_response :success
  end

  test "should create scpaymentinfo" do
    assert_difference('Scpaymentinfo.count') do
      post scpaymentinfos_url, params: { scpaymentinfo: { aba_number: @scpaymentinfo.aba_number, account_name: @scpaymentinfo.account_name, account_number: @scpaymentinfo.account_number, payment_address: @scpaymentinfo.payment_address, routing_number: @scpaymentinfo.routing_number, swift_code: @scpaymentinfo.swift_code } }
    end

    assert_redirected_to scpaymentinfo_url(Scpaymentinfo.last)
  end

  test "should show scpaymentinfo" do
    get scpaymentinfo_url(@scpaymentinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_scpaymentinfo_url(@scpaymentinfo)
    assert_response :success
  end

  test "should update scpaymentinfo" do
    patch scpaymentinfo_url(@scpaymentinfo), params: { scpaymentinfo: { aba_number: @scpaymentinfo.aba_number, account_name: @scpaymentinfo.account_name, account_number: @scpaymentinfo.account_number, payment_address: @scpaymentinfo.payment_address, routing_number: @scpaymentinfo.routing_number, swift_code: @scpaymentinfo.swift_code } }
    assert_redirected_to scpaymentinfo_url(@scpaymentinfo)
  end

  test "should destroy scpaymentinfo" do
    assert_difference('Scpaymentinfo.count', -1) do
      delete scpaymentinfo_url(@scpaymentinfo)
    end

    assert_redirected_to scpaymentinfos_url
  end
end
