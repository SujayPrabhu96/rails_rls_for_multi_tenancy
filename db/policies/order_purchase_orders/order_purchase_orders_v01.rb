RLS.policies_for :order_purchase_orders do
  policy :warehouse_order_purchase_orders do
    using <<-SQL
      tenant_id = current_setting('rls.tenant_id')::integer
    SQL
  end
end