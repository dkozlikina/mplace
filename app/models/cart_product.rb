class CartProduct < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def create_cart
    @cart = Cart.create()
  end
end
