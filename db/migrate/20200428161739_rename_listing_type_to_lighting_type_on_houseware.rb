class RenameListingTypeToLightingTypeOnHouseware < ActiveRecord::Migration[6.0]
  def change
    rename_column :housewares, :listing_type, :lighting_type

  end
end
