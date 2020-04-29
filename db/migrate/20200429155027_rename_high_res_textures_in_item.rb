class RenameHighResTexturesInItem < ActiveRecord::Migration[6.0]
  def change
        rename_column :items, :high_res_texture, :highres_texture
  end
end
