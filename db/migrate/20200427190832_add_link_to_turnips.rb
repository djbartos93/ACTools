class AddLinkToTurnips < ActiveRecord::Migration[6.0]
  def change
    add_column :turnips, :tap_link, :string
  end
end
