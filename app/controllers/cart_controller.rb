class CartController < ApplicationController
  def show
    @cart = current_user.cart
  end

  def add

    User.cart.create(product_id: params[:id], price: )
  end
end
