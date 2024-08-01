require "application_system_test_case"

class Order::PurchaseOrdersTest < ApplicationSystemTestCase
  setup do
    @order_purchase_order = order_purchase_orders(:one)
  end

  test "visiting the index" do
    visit order_purchase_orders_url
    assert_selector "h1", text: "Purchase orders"
  end

  test "should create purchase order" do
    visit order_purchase_orders_url
    click_on "New purchase order"

    fill_in "Business unit", with: @order_purchase_order.business_unit
    fill_in "Estimated lpn", with: @order_purchase_order.estimated_lpn
    fill_in "External order", with: @order_purchase_order.external_order_id
    fill_in "Order date", with: @order_purchase_order.order_date
    fill_in "Order number", with: @order_purchase_order.order_number
    fill_in "Po type", with: @order_purchase_order.po_type
    fill_in "Receipt date", with: @order_purchase_order.receipt_date
    fill_in "Status", with: @order_purchase_order.status
    fill_in "Tenant", with: @order_purchase_order.tenant_id
    click_on "Create Purchase order"

    assert_text "Purchase order was successfully created"
    click_on "Back"
  end

  test "should update Purchase order" do
    visit order_purchase_order_url(@order_purchase_order)
    click_on "Edit this purchase order", match: :first

    fill_in "Business unit", with: @order_purchase_order.business_unit
    fill_in "Estimated lpn", with: @order_purchase_order.estimated_lpn
    fill_in "External order", with: @order_purchase_order.external_order_id
    fill_in "Order date", with: @order_purchase_order.order_date
    fill_in "Order number", with: @order_purchase_order.order_number
    fill_in "Po type", with: @order_purchase_order.po_type
    fill_in "Receipt date", with: @order_purchase_order.receipt_date
    fill_in "Status", with: @order_purchase_order.status
    fill_in "Tenant", with: @order_purchase_order.tenant_id
    click_on "Update Purchase order"

    assert_text "Purchase order was successfully updated"
    click_on "Back"
  end

  test "should destroy Purchase order" do
    visit order_purchase_order_url(@order_purchase_order)
    click_on "Destroy this purchase order", match: :first

    assert_text "Purchase order was successfully destroyed"
  end
end
