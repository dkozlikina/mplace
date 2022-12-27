class CartController < ApplicationController
  def show
    @cart = current_user.cart
  end

  def add
    if not Cart.find_by(product_id: params[:id])
      Cart.create(product_id: params[:id], price: Product.find(params[:id]).price, amount: 1, user_id: current_user.id)
    end

  end

  def delete
    Cart.find_by(product_id: params[:id]).delete

  end
end
