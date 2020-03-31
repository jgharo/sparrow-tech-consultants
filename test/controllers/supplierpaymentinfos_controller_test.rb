require 'test_helper'

class SupplierpaymentinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplierpaymentinfo = supplierpaymentinfos(:one)
  end

  test "should get index" do
    get supplierpaymentinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_supplierpaymentinfo_url
    assert_response :success
  end

  test "should create supplierpaymentinfo" do
    assert_difference('Supplierpaymentinfo.count') do
      post supplierpaymentinfos_url, params: { supplierpaymentinfo: { aba_number: @supplierpaymentinfo.aba_number, account_name: @supplierpaymentinfo.account_name, account_number: @supplierpaymentinfo.account_number, payment_address: @supplierpaymentinfo.payment_address, routing_number: @supplierpaymentinfo.routing_number, swift_code: @supplierpaymentinfo.swift_code } }
    end

    assert_redirected_to supplierpaymentinfo_url(Supplierpaymentinfo.last)
  end

  test "should show supplierpaymentinfo" do
    get supplierpaymentinfo_url(@supplierpaymentinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplierpaymentinfo_url(@supplierpaymentinfo)
    assert_response :success
  end

  test "should update supplierpaymentinfo" do
    patch supplierpaymentinfo_url(@supplierpaymentinfo), params: { supplierpaymentinfo: { aba_number: @supplierpaymentinfo.aba_number, account_name: @supplierpaymentinfo.account_name, account_number: @supplierpaymentinfo.account_number, payment_address: @supplierpaymentinfo.payment_address, routing_number: @supplierpaymentinfo.routing_number, swift_code: @supplierpaymentinfo.swift_code } }
    assert_redirected_to supplierpaymentinfo_url(@supplierpaymentinfo)
  end

  test "should destroy supplierpaymentinfo" do
    assert_difference('Supplierpaymentinfo.count', -1) do
      delete supplierpaymentinfo_url(@supplierpaymentinfo)
    end

    assert_redirected_to supplierpaymentinfos_url
  end
end
