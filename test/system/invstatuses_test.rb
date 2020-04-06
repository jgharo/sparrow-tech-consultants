require "application_system_test_case"

class InvstatusesTest < ApplicationSystemTestCase
  setup do
    @invstatus = invstatuses(:one)
  end

  test "visiting the index" do
    visit invstatuses_url
    assert_selector "h1", text: "Invstatuses"
  end

  test "creating a Invstatus" do
    visit invstatuses_url
    click_on "New Invstatus"

    fill_in "Status", with: @invstatus.status
    click_on "Create Invstatus"

    assert_text "Invstatus was successfully created"
    click_on "Back"
  end

  test "updating a Invstatus" do
    visit invstatuses_url
    click_on "Edit", match: :first

    fill_in "Status", with: @invstatus.status
    click_on "Update Invstatus"

    assert_text "Invstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Invstatus" do
    visit invstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invstatus was successfully destroyed"
  end
end
