require "application_system_test_case"

class ProdstatusesTest < ApplicationSystemTestCase
  setup do
    @prodstatus = prodstatuses(:one)
  end

  test "visiting the index" do
    visit prodstatuses_url
    assert_selector "h1", text: "Prodstatuses"
  end

  test "creating a Prodstatus" do
    visit prodstatuses_url
    click_on "New Prodstatus"

    fill_in "Status", with: @prodstatus.status
    click_on "Create Prodstatus"

    assert_text "Prodstatus was successfully created"
    click_on "Back"
  end

  test "updating a Prodstatus" do
    visit prodstatuses_url
    click_on "Edit", match: :first

    fill_in "Status", with: @prodstatus.status
    click_on "Update Prodstatus"

    assert_text "Prodstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodstatus" do
    visit prodstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodstatus was successfully destroyed"
  end
end
