class RemoveColumnsFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :style, :string
    remove_column :products, :sex, :string
  end
end
