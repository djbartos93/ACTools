class CreatePosters < ActiveRecord::Migration[6.0]
  def change
    create_table :posters do |t|
      t.string :name
      t.string :image
      t.integer :buy
      t.integer :sell
      t.string :color_1
      t.string :color_2
      t.string :size
      t.string :source
      t.text :source_notes
      t.string :version
      t.string :catalog
      t.string :filename
      t.integer :internal_id
      t.string :unique_entry_id

      t.timestamps
    end
  end
end
