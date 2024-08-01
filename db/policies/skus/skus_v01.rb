RLS.policies_for :skus do
  policy :Warehouse_sku do
    using <<-SQL
      tenant_id = current_setting('rls.tenant_id')::integer
    SQL
  end
end