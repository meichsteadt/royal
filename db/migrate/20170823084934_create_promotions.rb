class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.string :name
      t.date :end_date
      t.string :image

      t.timestamps
    end
  end
end
