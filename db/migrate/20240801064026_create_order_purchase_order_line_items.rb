class CreateOrderPurchaseOrderLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_purchase_order_line_items do |t|
      t.integer :line_number
      t.string :sku_code
      t.string :sku_description
      t.string :uom
      t.integer :ordered_qty
      t.integer :received_qty
      t.string :sku_holdcode
      t.string :sku_type
      t.references :purchase_order, null: false, foreign_key: { to_table: :order_purchase_orders }
      t.integer :tenant_id, null: false

      t.timestamps
    end
  end
end
