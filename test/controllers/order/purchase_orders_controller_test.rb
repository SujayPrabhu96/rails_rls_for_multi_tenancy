require "test_helper"

class Order::PurchaseOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_purchase_order = order_purchase_orders(:one)
  end

  test "should get index" do
    get order_purchase_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_purchase_order_url
    assert_response :success
  end

  test "should create order_purchase_order" do
    assert_difference("Order::PurchaseOrder.count") do
      post order_purchase_orders_url, params: { order_purchase_order: { business_unit: @order_purchase_order.business_unit, estimated_lpn: @order_purchase_order.estimated_lpn, external_order_id: @order_purchase_order.external_order_id, order_date: @order_purchase_order.order_date, order_number: @order_purchase_order.order_number, po_type: @order_purchase_order.po_type, receipt_date: @order_purchase_order.receipt_date, status: @order_purchase_order.status, tenant_id: @order_purchase_order.tenant_id } }
    end

    assert_redirected_to order_purchase_order_url(Order::PurchaseOrder.last)
  end

  test "should show order_purchase_order" do
    get order_purchase_order_url(@order_purchase_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_purchase_order_url(@order_purchase_order)
    assert_response :success
  end

  test "should update order_purchase_order" do
    patch order_purchase_order_url(@order_purchase_order), params: { order_purchase_order: { business_unit: @order_purchase_order.business_unit, estimated_lpn: @order_purchase_order.estimated_lpn, external_order_id: @order_purchase_order.external_order_id, order_date: @order_purchase_order.order_date, order_number: @order_purchase_order.order_number, po_type: @order_purchase_order.po_type, receipt_date: @order_purchase_order.receipt_date, status: @order_purchase_order.status, tenant_id: @order_purchase_order.tenant_id } }
    assert_redirected_to order_purchase_order_url(@order_purchase_order)
  end

  test "should destroy order_purchase_order" do
    assert_difference("Order::PurchaseOrder.count", -1) do
      delete order_purchase_order_url(@order_purchase_order)
    end

    assert_redirected_to order_purchase_orders_url
  end
end
