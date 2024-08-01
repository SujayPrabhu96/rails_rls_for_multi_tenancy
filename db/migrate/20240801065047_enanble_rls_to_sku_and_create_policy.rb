class EnanbleRlsToSkuAndCreatePolicy < ActiveRecord::Migration[7.1]
  def change
    enable_rls :skus

    create_policy :skus
  end
end
