class CreateBusinessTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :business_types do |t|
      t.string :name, null: false, limit: 25

      t.timestamps
    end
  end
end
