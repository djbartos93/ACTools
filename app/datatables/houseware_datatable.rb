class HousewareDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    puts "this is the view columns method"
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      name: { source: "Houseware.name"},
      image: { source: "Houseware.image" },
      variation: { source: "Houseware.variation"},
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
    }
  end

  def data
    puts "this is the data method"
    records.map do |record|
      {
        name: record.name,
        image: record.image,
        variation: record.variation,

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
