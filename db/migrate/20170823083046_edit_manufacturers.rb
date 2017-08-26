class EditManufacturers < ActiveRecord::Migration[5.0]
  def change
    change_table :manufacturers do |t|
      t.string :logo
    end
  end
end
