class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.integer :products_id
      t.integer :user_id

      t.timestamps
    end
    add_index :purchases, [:products_id, :user_id], unique: true
  end
end
