class AddNameToCustomers < ActiveRecord::Migration[8.0]
  def change
    add_column :customers, :name, :string, null: false
  end
end
