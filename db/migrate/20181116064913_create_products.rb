class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :manufacturers_id
      t.string :status
      t.integer :categories_id
      t.text :description
      t.timestamps
    end
  end
end
