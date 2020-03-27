require "application_system_test_case"

class ProdStatusesTest < ApplicationSystemTestCase
  setup do
    @prod_status = prod_statuses(:one)
  end

  test "visiting the index" do
    visit prod_statuses_url
    assert_selector "h1", text: "Prod Statuses"
  end

  test "creating a Prod status" do
    visit prod_statuses_url
    click_on "New Prod Status"

    fill_in "Prod status", with: @prod_status.prod_status
    click_on "Create Prod status"

    assert_text "Prod status was successfully created"
    click_on "Back"
  end

  test "updating a Prod status" do
    visit prod_statuses_url
    click_on "Edit", match: :first

    fill_in "Prod status", with: @prod_status.prod_status
    click_on "Update Prod status"

    assert_text "Prod status was successfully updated"
    click_on "Back"
  end

  test "destroying a Prod status" do
    visit prod_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prod status was successfully destroyed"
  end
end
