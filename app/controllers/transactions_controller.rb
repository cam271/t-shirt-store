class TransactionsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :check_cart!

  def new
    gon.client_token = generate_client_token 
    #@order = current_order
    #@order_items = @order.order_items
    #@total_price = @order.order_items.sum(:unit_price)
  end

  def create
    #@order = current_order
    #@total_price = @order.order_items.sum(:unit_price)
    #@order_items = @order.order_items
    @result = Braintree::Transaction.sale(
              amount: subtotal,
              payment_method_nonce: params[:payment_method_nonce])
    if @result.success?
      #TODO destroy order_items inside of order (current_order_
      #@order_items.destroy
      redirect_to root_url, notice: "Congraulations! Your transaction has been successfully!"
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end

  private

  def check_cart!
    if current_order.blank?
      redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
    end
  end

  def generate_client_token
    Braintree::ClientToken.generate
  end

end
