class AddMotion < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.boolean :motion
    end
  end
end
