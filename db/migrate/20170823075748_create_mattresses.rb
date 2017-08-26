class CreateMattresses < ActiveRecord::Migration[5.0]
  def change
    create_table :mattresses do |t|
      t.string :name
      t.integer :manufacturer_id
      t.integer :price
      t.string :features, array: true, default: []
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
