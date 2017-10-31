class AddMotionToSearch < ActiveRecord::Migration[5.0]
  def change
    change_table :searches do |t|
      t.boolean :motion
    end
  end
end
