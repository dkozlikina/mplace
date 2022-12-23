class CartController < ApplicationController
  def show
    #current_user
    @cart = current_user.cart

    #@cart = User.find_by(id: Current.user.id).cart
  end
end
