class RenameColorInHouseware < ActiveRecord::Migration[6.0]
  def change
    rename_column :housewares, :color1, :color_1
    rename_column :housewares, :color2, :color_2

  end
end
