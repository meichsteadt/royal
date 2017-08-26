class EditMattresses < ActiveRecord::Migration[5.0]
  def change
    change_table :mattresses do |t|
      t.boolean :foam?
      t.string :firmness
      t.boolean :natural?
      t.boolean :pocketed_coil?
      t.boolean :adjustable?
    end
  end
end
