class AddWarrantyMattresses < ActiveRecord::Migration[5.0]
  def change
    change_table :mattresses do |t|
      t.integer :warranty_length
      t.string :warranty_details
    end
  end
end
