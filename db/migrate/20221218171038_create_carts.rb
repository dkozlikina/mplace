class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.integer :product_id
      t.float :price
      t.integer :amount

      t.timestamps null: false
    end
  end
end
