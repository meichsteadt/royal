class AddLocation < ActiveRecord::Migration[5.0]
  def change
    change_table :stores do |t|
      t.string :gmaps
    end
  end
end
