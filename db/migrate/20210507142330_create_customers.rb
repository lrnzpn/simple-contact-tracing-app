class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email_address
      t.string :mobile_number

      t.timestamps
    end
  end
end
