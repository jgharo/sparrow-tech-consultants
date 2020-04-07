require "application_system_test_case"

class ChemicalsTest < ApplicationSystemTestCase
  setup do
    @chemical = chemicals(:one)
  end

  test "visiting the index" do
    visit chemicals_url
    assert_selector "h1", text: "Chemicals"
  end

  test "creating a Chemical" do
    visit chemicals_url
    click_on "New Chemical"

    fill_in "Date modified", with: @chemical.date_modified
    fill_in "Prodcategory", with: @chemical.prodcategory_id
    fill_in "Prodstatus", with: @chemical.prodstatus_id
    fill_in "Product cost", with: @chemical.product_cost
    fill_in "Product description", with: @chemical.product_description
    fill_in "Product name", with: @chemical.product_name
    fill_in "Supplier", with: @chemical.supplier_id
    click_on "Create Chemical"

    assert_text "Chemical was successfully created"
    click_on "Back"
  end

  test "updating a Chemical" do
    visit chemicals_url
    click_on "Edit", match: :first

    fill_in "Date modified", with: @chemical.date_modified
    fill_in "Prodcategory", with: @chemical.prodcategory_id
    fill_in "Prodstatus", with: @chemical.prodstatus_id
    fill_in "Product cost", with: @chemical.product_cost
    fill_in "Product description", with: @chemical.product_description
    fill_in "Product name", with: @chemical.product_name
    fill_in "Supplier", with: @chemical.supplier_id
    click_on "Update Chemical"

    assert_text "Chemical was successfully updated"
    click_on "Back"
  end

  test "destroying a Chemical" do
    visit chemicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chemical was successfully destroyed"
  end
end
