class AddEmailAndPhoneToCustomers < ActiveRecord::Migration[8.0]
  def change
    add_column :customers, :email, :string, null: false
    add_column :customers, :phone, :string, null: false
  end
end
