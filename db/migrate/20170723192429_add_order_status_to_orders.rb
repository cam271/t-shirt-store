class AddOrderStatusToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :order_status, index: true
  end
end
