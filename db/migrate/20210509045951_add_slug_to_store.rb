class AddSlugToStore < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :slug, :string
  end
end
