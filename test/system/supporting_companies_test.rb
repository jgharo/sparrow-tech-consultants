require "application_system_test_case"

class SupportingCompaniesTest < ApplicationSystemTestCase
  setup do
    @supporting_company = supporting_companies(:one)
  end

  test "visiting the index" do
    visit supporting_companies_url
    assert_selector "h1", text: "Supporting Companies"
  end

  test "creating a Supporting company" do
    visit supporting_companies_url
    click_on "New Supporting Company"

    fill_in "Scpaymentinfo", with: @supporting_company.scpaymentinfo_id
    fill_in "Stlservice", with: @supporting_company.stlservice_id
    fill_in "Supportingcomp email", with: @supporting_company.supportingcomp_email
    fill_in "Supportingcomp name", with: @supporting_company.supportingcomp_name
    click_on "Create Supporting company"

    assert_text "Supporting company was successfully created"
    click_on "Back"
  end

  test "updating a Supporting company" do
    visit supporting_companies_url
    click_on "Edit", match: :first

    fill_in "Scpaymentinfo", with: @supporting_company.scpaymentinfo_id
    fill_in "Stlservice", with: @supporting_company.stlservice_id
    fill_in "Supportingcomp email", with: @supporting_company.supportingcomp_email
    fill_in "Supportingcomp name", with: @supporting_company.supportingcomp_name
    click_on "Update Supporting company"

    assert_text "Supporting company was successfully updated"
    click_on "Back"
  end

  test "destroying a Supporting company" do
    visit supporting_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supporting company was successfully destroyed"
  end
end
