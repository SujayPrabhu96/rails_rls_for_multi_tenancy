json.extract! order_purchase_order, :id, :order_number, :external_order_id, :po_type, :status, :business_unit, :order_date, :receipt_date, :estimated_lpn, :tenant_id, :created_at, :updated_at
json.url order_purchase_order_url(order_purchase_order, format: :json)
