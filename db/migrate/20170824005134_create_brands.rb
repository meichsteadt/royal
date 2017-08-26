class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :image
      t.string :video
      t.string :logo

      t.timestamps
    end

    drop_table :manufacturers
  end
end
