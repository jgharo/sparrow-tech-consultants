require "application_system_test_case"

class TransportationsTest < ApplicationSystemTestCase
  setup do
    @transportation = transportations(:one)
  end

  test "visiting the index" do
    visit transportations_url
    assert_selector "h1", text: "Transportations"
  end

  test "creating a Transportation" do
    visit transportations_url
    click_on "New Transportation"

    fill_in "Date modified", with: @transportation.date_modified
    fill_in "Servcategory", with: @transportation.servcategory_id
    fill_in "Service cost", with: @transportation.service_cost
    fill_in "Service description", with: @transportation.service_description
    fill_in "Service name", with: @transportation.service_name
    fill_in "Servstatus", with: @transportation.servstatus_id
    fill_in "Supporting company", with: @transportation.supporting_company_id
    click_on "Create Transportation"

    assert_text "Transportation was successfully created"
    click_on "Back"
  end

  test "updating a Transportation" do
    visit transportations_url
    click_on "Edit", match: :first

    fill_in "Date modified", with: @transportation.date_modified
    fill_in "Servcategory", with: @transportation.servcategory_id
    fill_in "Service cost", with: @transportation.service_cost
    fill_in "Service description", with: @transportation.service_description
    fill_in "Service name", with: @transportation.service_name
    fill_in "Servstatus", with: @transportation.servstatus_id
    fill_in "Supporting company", with: @transportation.supporting_company_id
    click_on "Update Transportation"

    assert_text "Transportation was successfully updated"
    click_on "Back"
  end

  test "destroying a Transportation" do
    visit transportations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transportation was successfully destroyed"
  end
end
