class RenameHhaConceptInHouseware < ActiveRecord::Migration[6.0]
  def change
    rename_column :housewares, :hha_concept1, :hha_concept_1
    rename_column :housewares, :hha_concept2, :hha_concept_2
  end
end
