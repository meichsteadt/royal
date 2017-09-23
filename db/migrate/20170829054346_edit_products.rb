class EditProducts < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.integer :pieces
      t.string  :style
      t.boolean :counter_height
      t.boolean :sectional
      t.boolean :sofa_love
      t.integer :price
      t.integer :brand_id
    end
  end
end
