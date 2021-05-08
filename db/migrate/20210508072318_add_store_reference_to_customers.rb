class AddStoreReferenceToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_reference :customers, :store
  end
end
