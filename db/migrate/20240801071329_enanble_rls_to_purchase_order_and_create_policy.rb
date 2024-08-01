class EnanbleRlsToPurchaseOrderAndCreatePolicy < ActiveRecord::Migration[7.1]
  def change
    enable_rls :order_purchase_orders

    create_policy :order_purchase_orders
  end
end
