class Item < ApplicationRecord
  validates :unique_entry_id, uniqueness: true

  require 'csv'
  require 'activerecord-import/base'

  def self.my_import(file)
    items = []
    CSV.foreach(file.path, headers: true, skip_blanks: true, header_converters: :symbol) do |row|
      items << Item.new(row.to_h)
    end
    Item.import items, recursive: true
  end
end
