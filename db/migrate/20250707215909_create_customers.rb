class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.references :business_type, null: false, foreign_key: true
      t.string :address1, null: false, limit: 255
      t.string :address2, limit: 255
      t.string :city, null: false, limit: 30
      t.string :state, null: false, limit: 2
      t.string :zip_code, null: false, limit: 10

      t.timestamps
    end
  end
end
