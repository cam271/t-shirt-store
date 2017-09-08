class RemoveTotalPriceFromOrderItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_items, :total_price
  end
end
