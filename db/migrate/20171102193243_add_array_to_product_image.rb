class AddArrayToProductImage < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.string :images, array: true
    end
  end
end
