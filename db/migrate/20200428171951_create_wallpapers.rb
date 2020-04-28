class CreateWallpapers < ActiveRecord::Migration[6.0]
  def change
    create_table :wallpapers do |t|
      t.string :name
      t.string :image
      t.boolean :vfx
      t.string :vfx_type
      t.boolean :diy
      t.integer :buy
      t.integer :sell
      t.string :color_1
      t.string :color_2
      t.string :source
      t.text :source_notes
      t.string :catalog
      t.string :window_type
      t.string :window_color
      t.string :pane_type
      t.string :curtain
      t.string :curtain_color
      t.string :celing_type
      t.string :hha_concept_1
      t.string :hha_concept_2
      t.string :tag
      t.string :version
      t.string :filename
      t.integer :internal_id
      t.string :unique_entry_id

      t.timestamps
    end
  end
end
