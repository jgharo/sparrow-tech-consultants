require "application_system_test_case"

class SupplierpaymentinfosTest < ApplicationSystemTestCase
  setup do
    @supplierpaymentinfo = supplierpaymentinfos(:one)
  end

  test "visiting the index" do
    visit supplierpaymentinfos_url
    assert_selector "h1", text: "Supplierpaymentinfos"
  end

  test "creating a Supplierpaymentinfo" do
    visit supplierpaymentinfos_url
    click_on "New Supplierpaymentinfo"

    fill_in "Aba number", with: @supplierpaymentinfo.aba_number
    fill_in "Account name", with: @supplierpaymentinfo.account_name
    fill_in "Account number", with: @supplierpaymentinfo.account_number
    fill_in "Payment address", with: @supplierpaymentinfo.payment_address
    fill_in "Routing number", with: @supplierpaymentinfo.routing_number
    fill_in "Swift code", with: @supplierpaymentinfo.swift_code
    click_on "Create Supplierpaymentinfo"

    assert_text "Supplierpaymentinfo was successfully created"
    click_on "Back"
  end

  test "updating a Supplierpaymentinfo" do
    visit supplierpaymentinfos_url
    click_on "Edit", match: :first

    fill_in "Aba number", with: @supplierpaymentinfo.aba_number
    fill_in "Account name", with: @supplierpaymentinfo.account_name
    fill_in "Account number", with: @supplierpaymentinfo.account_number
    fill_in "Payment address", with: @supplierpaymentinfo.payment_address
    fill_in "Routing number", with: @supplierpaymentinfo.routing_number
    fill_in "Swift code", with: @supplierpaymentinfo.swift_code
    click_on "Update Supplierpaymentinfo"

    assert_text "Supplierpaymentinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplierpaymentinfo" do
    visit supplierpaymentinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplierpaymentinfo was successfully destroyed"
  end
end
