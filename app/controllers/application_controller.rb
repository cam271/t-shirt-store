class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_order
  helper_method :subtotal
  helper_method :order_items

  # helper method to find current order_id or else it creates a new Order
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def subtotal
    @subtotal = current_order.order_items.sum(:unit_price)
  end

  def order_items
    @order_items = current_order.order_items
  end

end
