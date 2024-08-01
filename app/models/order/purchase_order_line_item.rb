class Order::PurchaseOrderLineItem < ApplicationRecord
  belongs_to :purchase_order
end
