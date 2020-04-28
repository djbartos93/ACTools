class CreateFencings < ActiveRecord::Migration[6.0]
  def change
    create_table :fencings do |t|
      t.string :name
      t.string :image
      t.boolean :diy
      t.integer :buy
      t.integer :sell
      t.string :source
      t.text :source_notes
      t.string :version
      t.string :filename
      t.integer :internal_id
      t.string :unique_entry_id

      t.timestamps
    end
  end
end
