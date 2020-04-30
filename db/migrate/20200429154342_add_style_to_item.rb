class AddStyleToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :style, :string
  end
end
