class AddInfoToTurnips < ActiveRecord::Migration[6.0]
  def change
    add_column :turnips, :potential_max, :integer
    add_column :turnips, :pattern, :string
  end
end
