class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :variation
      t.string :body_title
      t.string :pattern
      t.string :patern_title
      t.boolean :diy
      t.string :body_customize
      t.string :pattern_customize
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
      t.string :speaker_type
      t.string :lighting_type
      t.string :catalog
      t.string :filename
      t.string :variant_id
      t.string :internal_id
      t.boolean :door_deco
      t.boolean :vfx
      t.string :vfx_type
      t.string :window_type
      t.string :window_color
      t.string :pane_type
      t.string :curtain_type
      t.string :curtain_color
      t.string :ceiling_type
      t.string :set
      t.integer :uses
      t.string :closet_image
      t.string :storage_image
      t.string :label_themes
      t.string :primary_shape
      t.string :secondary_shape
      t.string :framed_image
      t.string :album_image
      t.string :high_res_texture
      t.boolean :genuine
      t.string :category

      t.timestamps
    end
  end
end
