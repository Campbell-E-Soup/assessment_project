class AddEmailAndPhoneToCustomers < ActiveRecord::Migration[8.0]
  def change
    add_column :customers, :email, :string
    add_column :customers, :phone, :string
  end
end
