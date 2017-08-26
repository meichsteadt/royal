class CreateSearch < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.integer :min
      t.integer :max
      t.string :size
      t.string :features
    end
  end
end
