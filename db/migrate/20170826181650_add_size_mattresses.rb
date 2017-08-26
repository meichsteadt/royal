class AddSizeMattresses < ActiveRecord::Migration[5.0]
  def change
    change_table :mattresses do |t|
      t.string :sizes, array: true, default: []
      t.integer :brand_id
    end
  end
end
