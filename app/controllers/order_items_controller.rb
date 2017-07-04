class OrderItemsController < ApplicationController
  # Loads current order then saves it to the user session
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.order_status_id = 1
    @order.save
    session[:order_id] = @order.id
  end

  # Loads current order then adds new item by id to the order items
  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  # Loads current order then either destroys single item by finding the id or all items
  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

  # called from create, update, and destroy methods
  private 
    def order_item_params
      params.require(:order_item).permit(:quantity, :product_id)
    end
end