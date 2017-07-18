class EditStores < ActiveRecord::Migration[5.0]
  def change
    change_table :stores do |t|
      t.string :facebook
      t.string :instagram
      t.string :twitter
      t.string :pinterest
      t.string :email
      t.string :store_image
      t.string :store_copy
    end
  end
end
