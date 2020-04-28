class CreateHousewares < ActiveRecord::Migration[6.0]
  def change
    create_table :housewares do |t|
      t.string :name
      t.string :image
      t.string :variation
      t.string :body_title
      t.string :pattern
      t.boolean :diy
      t.boolean :body_customize
      t.integer :kit_cost
      t.string :buy
      t.string :sell
      t.string :color1
      t.string :color2
      t.string :size
      t.string :source
      t.text :source_notes
      t.string :version
      t.string :hha_concept1
      t.string :hha_concept2
      t.string :hha_series
      t.string :hha_set
      t.boolean :interact
      t.string :tag
      t.string :speaker_type
      t.string :listing_type
      t.string :catalog
      t.string :filename
      t.string :variant_id
      t.integer :internal_id
      t.string :unique_entry_id

      t.timestamps
    end
  end
end
