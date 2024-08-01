# seeds.rb

# Seed data for Warehouses
Warehouse.create([
  { name: 'AHI Jababeka', location: 'Jababeka' },
  { name: 'Informa', location: 'Cikupa' }
])

# Seed data for SKUs
Sku.create([
  { name: 'SKU001', description: 'Item 1 Description', tenant_id: 1 },
  { name: 'SKU002', description: 'Item 2 Description', tenant_id: 1 },
  { name: 'SKU003', description: 'Item 3 Description', tenant_id: 2 }
])

# Seed data for Order Purchase Orders
Order::PurchaseOrder.create([
  { order_number: 'PO12345', external_order_id: 'EXT001', po_type: 'Standard', status: 'Pending', business_unit: 'Unit1', order_date: '2024-07-01', receipt_date: '2024-07-05', estimated_lpn: 10, tenant_id: 1 },
  { order_number: 'PO12346', external_order_id: 'EXT002', po_type: 'Urgent', status: 'Processing', business_unit: 'Unit2', order_date: '2024-07-10', receipt_date: '2024-07-15', estimated_lpn: 5, tenant_id: 2 }
])

# Seed data for Order Purchase Order Line Items
Order::PurchaseOrderLineItem.create([
  { line_number: 1, sku_code: 'SKU001', sku_description: 'Item 1 Description', uom: 'pcs', ordered_qty: 100, received_qty: 90, sku_holdcode: 'HOLD01', sku_type: 'TypeA', purchase_order_id: Order::PurchaseOrder.first.id, tenant_id: 1 },
  { line_number: 2, sku_code: 'SKU002', sku_description: 'Item 2 Description', uom: 'pcs', ordered_qty: 200, received_qty: 180, sku_holdcode: 'HOLD02', sku_type: 'TypeB', purchase_order_id: Order::PurchaseOrder.first.id, tenant_id: 1 },
  { line_number: 1, sku_code: 'SKU003', sku_description: 'Item 3 Description', uom: 'pcs', ordered_qty: 50, received_qty: 50, sku_holdcode: 'HOLD01', sku_type: 'TypeA', purchase_order_id: Order::PurchaseOrder.second.id, tenant_id: 2 }
])
