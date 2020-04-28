class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :image
      t.string :variation
      t.string :body_title
      t.string :pattern
      t.string :pattern_title
      t.boolean :diy
      t.boolean :customize
      t.integer :kit_cost
      t.integer :buy
      t.integer :sell
      t.string :color_1
      t.string :color_2
      t.string :size
      t.string :source
      t.string :version
      t.string :catalog
      t.string :filename
      t.string :variant_id
      t.integer :internal_id
      t.string :unique_entry_id

      t.timestamps
    end
  end
end
