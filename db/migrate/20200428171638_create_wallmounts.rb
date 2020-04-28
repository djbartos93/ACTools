class CreateWallmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :wallmounts do |t|
      t.string :name
      t.string :images
      t.string :variation
      t.string :body_title
      t.string :pattern
      t.string :pattern_title
      t.boolean :diy
      t.boolean :body_customize
      t.boolean :pattern_customize
      t.integer :kit_cost
      t.integer :buy
      t.integer :sell
      t.string :color_1
      t.string :color_2
      t.string :size
      t.string :source
      t.text :source_notes
      t.string :version
      t.string :hha_concept_1
      t.string :hha_concept_2
      t.string :hha_series
      t.string :hha_set
      t.boolean :interact
      t.string :tag
      t.boolean :door_deco
      t.string :lighting_type
      t.string :catalog
      t.string :filename
      t.string :variant_id
      t.string :internal_id
      t.string :unieue_entry_id

      t.timestamps
    end
  end
end
