class CreateSkus < ActiveRecord::Migration[7.1]
  def change
    create_table :skus do |t|
      t.string :name
      t.text :description
      t.integer :tenant_id, null: false

      t.timestamps
    end
  end
end
