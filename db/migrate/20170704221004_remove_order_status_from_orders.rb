class RemoveOrderStatusFromOrders < ActiveRecord::Migration[5.0]
  def change
  	remove_column :orders, :OrderStatus_id, :integer
  end
end
