class ApplicationController < ActionController::Base
  before_action :init_row_level_security

  def init_row_level_security
    # Get the warehouse information from the request or the session
    # For simplicity, I am using the first warehouse as the default or get from request headers
    current_tenant = Warehouse.find_by(id: request.headers['X-Tenant'] || 1)

    if current_tenant
      RLS.set_tenant current_tenant
    else
      puts "Tenant not found"
    end
  end
end
