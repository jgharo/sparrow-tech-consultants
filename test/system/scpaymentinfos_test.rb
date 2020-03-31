require "application_system_test_case"

class ScpaymentinfosTest < ApplicationSystemTestCase
  setup do
    @scpaymentinfo = scpaymentinfos(:one)
  end

  test "visiting the index" do
    visit scpaymentinfos_url
    assert_selector "h1", text: "Scpaymentinfos"
  end

  test "creating a Scpaymentinfo" do
    visit scpaymentinfos_url
    click_on "New Scpaymentinfo"

    fill_in "Aba number", with: @scpaymentinfo.aba_number
    fill_in "Account name", with: @scpaymentinfo.account_name
    fill_in "Account number", with: @scpaymentinfo.account_number
    fill_in "Payment address", with: @scpaymentinfo.payment_address
    fill_in "Routing number", with: @scpaymentinfo.routing_number
    fill_in "Swift code", with: @scpaymentinfo.swift_code
    click_on "Create Scpaymentinfo"

    assert_text "Scpaymentinfo was successfully created"
    click_on "Back"
  end

  test "updating a Scpaymentinfo" do
    visit scpaymentinfos_url
    click_on "Edit", match: :first

    fill_in "Aba number", with: @scpaymentinfo.aba_number
    fill_in "Account name", with: @scpaymentinfo.account_name
    fill_in "Account number", with: @scpaymentinfo.account_number
    fill_in "Payment address", with: @scpaymentinfo.payment_address
    fill_in "Routing number", with: @scpaymentinfo.routing_number
    fill_in "Swift code", with: @scpaymentinfo.swift_code
    click_on "Update Scpaymentinfo"

    assert_text "Scpaymentinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Scpaymentinfo" do
    visit scpaymentinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scpaymentinfo was successfully destroyed"
  end
end
