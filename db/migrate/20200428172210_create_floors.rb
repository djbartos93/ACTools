class CreateFloors < ActiveRecord::Migration[6.0]
  def change
    create_table :floors do |t|
      t.string :name
      t.string :image
      t.boolean :vfx
      t.boolean :diy
      t.integer :buy
      t.integer :sell
      t.string :color_1
      t.string :color_2
      t.string :source
      t.text :source_notes
      t.string :version
      t.string :hha_concept_1
      t.string :hha_concept_2
      t.string :hha_series
      t.string :tag
      t.string :catalog
      t.string :filename
      t.integer :internal_id
      t.string :unieque_entry_id

      t.timestamps
    end
  end
end
