class HousewareDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    puts "this is the view columns method"
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      filename: { source: "Houseware.filename"},
      name: { source: "Houseware.name"},
      buy: { source: "Houseware.buy"},
      sell: { source: "Houseware.sell"},
      tag: { source: "Houseware.sell"}

      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
    }
  end

  def data
    puts "this is the data method"
    records.map do |record|
      {
        filename: record.filename,
        name: record.name,
        image: record.image,
        buy: record.buy,
        sell: record.sell,
        tag: record.tag,
        DT_RowID: record.id
      }
    end
  end

  def get_raw_records
    # insert query here
    # User.all
    puts "is this working at the get raw records?"
    Houseware.all
  end

end
