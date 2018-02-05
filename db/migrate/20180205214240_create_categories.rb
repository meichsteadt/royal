class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :parent_category

      t.timestamps
    end

    change_table :products do |t|
      t.string :thumbnail
      t.string :number
      t.string :dimensions
      t.string :brand
    end
    remove_column :mattresses, :manufacturer_id
    remove_column :products, :category
    remove_column :products, :image
    remove_column :products, :pieces
    remove_column :products, :counter_height
    remove_column :products, :style
    remove_column :products, :sectional
    remove_column :products, :sofa_love
    remove_column :products, :motion
  end
end
