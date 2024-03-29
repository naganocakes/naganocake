class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :shipping_cost
      t.integer :total_payment
      t.integer :payment_method, default: 0, null: false
      t.integer :status, default: 0, null: false
      
      t.timestamps
    end
  end
end
