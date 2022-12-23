class CartsProductsController < ApplicationController
  def show
    @items = CartProduct.all
  end
end
