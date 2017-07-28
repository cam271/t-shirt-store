class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  # uncoment this when devise error goes away: before_action :authenticate_user!

  # helper method to create order throughout the seesion or new order
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
  
end
