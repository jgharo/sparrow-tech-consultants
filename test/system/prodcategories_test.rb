require "application_system_test_case"

class ProdcategoriesTest < ApplicationSystemTestCase
  setup do
    @prodcategory = prodcategories(:one)
  end

  test "visiting the index" do
    visit prodcategories_url
    assert_selector "h1", text: "Prodcategories"
  end

  test "creating a Prodcategory" do
    visit prodcategories_url
    click_on "New Prodcategory"

    fill_in "Category", with: @prodcategory.category
    click_on "Create Prodcategory"

    assert_text "Prodcategory was successfully created"
    click_on "Back"
  end

  test "updating a Prodcategory" do
    visit prodcategories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @prodcategory.category
    click_on "Update Prodcategory"

    assert_text "Prodcategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodcategory" do
    visit prodcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodcategory was successfully destroyed"
  end
end
