class Order::PurchaseOrder < ApplicationRecord
  has_many :line_items, class_name: 'Order::PurchaseOrderLineItem', dependent: :destroy
end
