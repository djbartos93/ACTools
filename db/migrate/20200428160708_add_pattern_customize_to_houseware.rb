class AddPatternCustomizeToHouseware < ActiveRecord::Migration[6.0]
  def change
    add_column :housewares, :pattern_customize, :boolean
  end
end
