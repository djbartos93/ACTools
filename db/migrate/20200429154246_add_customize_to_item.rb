class AddCustomizeToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :customize, :boolean
  end
end
