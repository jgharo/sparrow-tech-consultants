require "application_system_test_case"

class ProductOrdersTest < ApplicationSystemTestCase
  setup do
    @product_order = product_orders(:one)
  end

  test "visiting the index" do
    visit product_orders_url
    assert_selector "h1", text: "Product Orders"
  end

  test "creating a Product order" do
    visit product_orders_url
    click_on "New Product Order"

    fill_in "Invoice", with: @product_order.invoice_id
    fill_in "Product cost total", with: @product_order.product_cost_total
    fill_in "Product", with: @product_order.product_id
    fill_in "Product quantity", with: @product_order.product_quantity
    click_on "Create Product order"

    assert_text "Product order was successfully created"
    click_on "Back"
  end

  test "updating a Product order" do
    visit product_orders_url
    click_on "Edit", match: :first

    fill_in "Invoice", with: @product_order.invoice_id
    fill_in "Product cost total", with: @product_order.product_cost_total
    fill_in "Product", with: @product_order.product_id
    fill_in "Product quantity", with: @product_order.product_quantity
    click_on "Update Product order"

    assert_text "Product order was successfully updated"
    click_on "Back"
  end

  test "destroying a Product order" do
    visit product_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product order was successfully destroyed"
  end
end
