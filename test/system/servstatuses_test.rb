require "application_system_test_case"

class ServstatusesTest < ApplicationSystemTestCase
  setup do
    @servstatus = servstatuses(:one)
  end

  test "visiting the index" do
    visit servstatuses_url
    assert_selector "h1", text: "Servstatuses"
  end

  test "creating a Servstatus" do
    visit servstatuses_url
    click_on "New Servstatus"

    fill_in "Status", with: @servstatus.status
    click_on "Create Servstatus"

    assert_text "Servstatus was successfully created"
    click_on "Back"
  end

  test "updating a Servstatus" do
    visit servstatuses_url
    click_on "Edit", match: :first

    fill_in "Status", with: @servstatus.status
    click_on "Update Servstatus"

    assert_text "Servstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Servstatus" do
    visit servstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Servstatus was successfully destroyed"
  end
end
