class AddSizePricesMattresses < ActiveRecord::Migration[5.0]
  def change
    change_table :mattresses do |t|
      t.string :price_sizes, hash: true
    end
  end
end
