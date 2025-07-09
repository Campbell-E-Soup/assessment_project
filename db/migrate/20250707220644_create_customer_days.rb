class CreateCustomerDays < ActiveRecord::Migration[8.0]
  def change
    create_table :customer_days do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :day, null: false, foreign_key: true

      t.timestamps
    end

    # Prevent duplicates
    add_index :customer_days, [ :customer_id, :day_id ], unique: true
  end
end
