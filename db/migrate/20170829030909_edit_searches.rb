class EditSearches < ActiveRecord::Migration[5.0]
  def change
    change_table :searches do |t|
      t.integer :pieces
      t.string :style
      t.boolean :counter_height
      t.boolean :sectional
      t.boolean :sofa_love
      t.string :category
    end
  end
end
