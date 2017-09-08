class ProductsController < ApplicationController

  # finds all products so that they can be displayed, and creates a new instance of our OrderItem model for use in our forms.
  def index
    @products = Product.where(category: params[:category])
    @order_item = current_order.order_items.new
  end
end
