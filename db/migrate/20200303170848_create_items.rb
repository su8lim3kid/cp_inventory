class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.integer :pallets
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
