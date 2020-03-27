require "application_system_test_case"

class ProdCategoriesTest < ApplicationSystemTestCase
  setup do
    @prod_category = prod_categories(:one)
  end

  test "visiting the index" do
    visit prod_categories_url
    assert_selector "h1", text: "Prod Categories"
  end

  test "creating a Prod category" do
    visit prod_categories_url
    click_on "New Prod Category"

    fill_in "Prod category", with: @prod_category.prod_category
    click_on "Create Prod category"

    assert_text "Prod category was successfully created"
    click_on "Back"
  end

  test "updating a Prod category" do
    visit prod_categories_url
    click_on "Edit", match: :first

    fill_in "Prod category", with: @prod_category.prod_category
    click_on "Update Prod category"

    assert_text "Prod category was successfully updated"
    click_on "Back"
  end

  test "destroying a Prod category" do
    visit prod_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prod category was successfully destroyed"
  end
end
