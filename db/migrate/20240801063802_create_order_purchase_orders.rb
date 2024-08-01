class CreateOrderPurchaseOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :order_purchase_orders do |t|
      t.string :order_number
      t.string :external_order_id
      t.string :po_type
      t.string :status
      t.string :business_unit
      t.date :order_date
      t.date :receipt_date
      t.integer :estimated_lpn
      t.integer :tenant_id

      t.timestamps
    end
  end
end
