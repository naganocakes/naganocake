class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.references :order, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :price
      t.integer :amount
      t.integer :making_status, default: 0, null: false

      t.timestamps
    end
  end
end
