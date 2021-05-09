class AddRoleToStores < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :role, :integer
  end
end
