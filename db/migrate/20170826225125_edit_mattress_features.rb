class EditMattressFeatures < ActiveRecord::Migration[5.0]
  def change
    remove_column :mattresses, :foam?
    remove_column :mattresses, :natural?
    remove_column :mattresses, :adjustable?
    remove_column :mattresses, :pocketed_coil?
    add_column :mattresses, :components, :string, array: true, default: []
    add_column :mattresses, :adjustable, :boolean
  end
end
