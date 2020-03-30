require "application_system_test_case"

class StlclientsTest < ApplicationSystemTestCase
  setup do
    @stlclient = stlclients(:one)
  end

  test "visiting the index" do
    visit stlclients_url
    assert_selector "h1", text: "Stlclients"
  end

  test "creating a Stlclient" do
    visit stlclients_url
    click_on "New Stlclient"

    fill_in "Client billingaddress", with: @stlclient.client_billingaddress
    fill_in "Client companyname", with: @stlclient.client_companyname
    fill_in "Client email", with: @stlclient.client_email
    fill_in "Client fname", with: @stlclient.client_fname
    fill_in "Client lname", with: @stlclient.client_lname
    fill_in "Client phonenumber", with: @stlclient.client_phonenumber
    fill_in "Client shippingaddress", with: @stlclient.client_shippingaddress
    fill_in "Employee", with: @stlclient.employee_id
    click_on "Create Stlclient"

    assert_text "Stlclient was successfully created"
    click_on "Back"
  end

  test "updating a Stlclient" do
    visit stlclients_url
    click_on "Edit", match: :first

    fill_in "Client billingaddress", with: @stlclient.client_billingaddress
    fill_in "Client companyname", with: @stlclient.client_companyname
    fill_in "Client email", with: @stlclient.client_email
    fill_in "Client fname", with: @stlclient.client_fname
    fill_in "Client lname", with: @stlclient.client_lname
    fill_in "Client phonenumber", with: @stlclient.client_phonenumber
    fill_in "Client shippingaddress", with: @stlclient.client_shippingaddress
    fill_in "Employee", with: @stlclient.employee_id
    click_on "Update Stlclient"

    assert_text "Stlclient was successfully updated"
    click_on "Back"
  end

  test "destroying a Stlclient" do
    visit stlclients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stlclient was successfully destroyed"
  end
end
