class AddUniqueEntryIdToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :unique_entry_id, :string
  end
end
