require "application_system_test_case"

class StlservicesTest < ApplicationSystemTestCase
  setup do
    @stlservice = stlservices(:one)
  end

  test "visiting the index" do
    visit stlservices_url
    assert_selector "h1", text: "Stlservices"
  end

  test "creating a Stlservice" do
    visit stlservices_url
    click_on "New Stlservice"

    fill_in "Date modified", with: @stlservice.date_modified
    fill_in "Servcategory", with: @stlservice.servcategory_id
    fill_in "Service cost", with: @stlservice.service_cost
    fill_in "Service description", with: @stlservice.service_description
    fill_in "Service name", with: @stlservice.service_name
    fill_in "Servstatus", with: @stlservice.servstatus_id
    click_on "Create Stlservice"

    assert_text "Stlservice was successfully created"
    click_on "Back"
  end

  test "updating a Stlservice" do
    visit stlservices_url
    click_on "Edit", match: :first

    fill_in "Date modified", with: @stlservice.date_modified
    fill_in "Servcategory", with: @stlservice.servcategory_id
    fill_in "Service cost", with: @stlservice.service_cost
    fill_in "Service description", with: @stlservice.service_description
    fill_in "Service name", with: @stlservice.service_name
    fill_in "Servstatus", with: @stlservice.servstatus_id
    click_on "Update Stlservice"

    assert_text "Stlservice was successfully updated"
    click_on "Back"
  end

  test "destroying a Stlservice" do
    visit stlservices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stlservice was successfully destroyed"
  end
end
