RLS.configure do |config|
  config.tenant_fk = :tenant_id
  config.policy_dir = 'db/policies'
end
