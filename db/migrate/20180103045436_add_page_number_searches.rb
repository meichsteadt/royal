class AddPageNumberSearches < ActiveRecord::Migration[5.0]
  def change
    change_table :searches do |t|
      t.string :search_input
      t.string :page_number
    end
  end
end
