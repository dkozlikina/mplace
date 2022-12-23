class AddColumnUserIdForTableCarts < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :user,null: false, foreign_key: {on_delete: :cascade}
  end
end
