class CreateDays < ActiveRecord::Migration[8.0]
  def change
    create_table :days do |t|
      t.string :name, null: false, limit: 9
      t.string :name_short, null: false, limit: 1

      t.timestamps
    end
  end
end
