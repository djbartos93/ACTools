class AddDateToTurnips < ActiveRecord::Migration[6.0]
  def change
    add_column :turnips, :week_of, :date
  end
end
