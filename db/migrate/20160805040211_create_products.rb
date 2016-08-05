class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :style
      t.string :sex
      t.string :image

      t.timestamps
    end
  end
end
