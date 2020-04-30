class AddArtCategoryToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :art_category, :string
  end
end
