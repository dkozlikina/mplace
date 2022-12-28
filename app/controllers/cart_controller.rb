class CartController < ApplicationController
  def show
    @cart = current_user.cart

    ans = 0
    current_user.cart.each  do | x |
      ans += x.price * x.amount
    end
    @cost = ans
  end

  def add
    if not Cart.find_by(product_id: params[:id])
      Cart.create(product_id: params[:id], price: Product.find(params[:id]).price, amount: 1, user_id: current_user.id)
    end

  end

  def delete
    Cart.find_by(product_id: params[:id]).delete
  end

  def cost
    ans = 0
    current_user.cart.each  do | x |
      ans += x.price * x.amount
    end
  end
end
