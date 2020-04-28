class Houseware < ApplicationRecord

require 'csv'
require 'activerecord-import/base'

def self.my_import(file)
  housewares = []
  CSV.foreach(file.path, headers: true, skip_blanks: true, header_converters: :symbol) do |row|
    housewares << Houseware.new(row.to_h)
  end
  Houseware.import housewares, recursive: true
end

end
