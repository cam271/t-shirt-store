class RemoveOrderStatusesFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :order_statuses_id
  end
end
