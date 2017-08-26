class AddCategoryBrands < ActiveRecord::Migration[5.0]
  def change
    change_table :brands do |t|
      t.string :category
    end
  end
end
