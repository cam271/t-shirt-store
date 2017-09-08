class OrdersController < ApplicationController

  def destroy
    @order = Order.find(params[:id])
    @order.order_items.destroy
    #@order = current_order
  end   

end
