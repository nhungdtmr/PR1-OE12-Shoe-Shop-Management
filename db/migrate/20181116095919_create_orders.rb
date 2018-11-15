class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :receiver
      t.integer :user_id
      t.datetime :order_time
      t.string :order_place
      t.string :order_phone
      t.integer :status
      t.text :note
      t.timestamps
    end
  end
end
