class RenamePatternTitleInItem < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :patern_title, :pattern_title

  end
end
