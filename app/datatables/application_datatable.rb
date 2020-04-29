class ApplicationDatatable < AjaxDatatablesRails::ActiveRecord


  def view_columns
    puts "this is the view columns method"
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      filename: { source: "Item.filename"},
      variation: { source: "Item.variation"},
      name: { source: "Item.name"},
      buy: { source: "Item.buy"},
      sell: { source: "Item.sell"},
      category: { source: "Item.category"}

      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
    }
  end


    def data
      puts "this is the data method from item datatable"
      records.map do |record|
        {
          filename: record.filename,
          name: record.name,
          image: record.image,
          buy: record.buy,
          sell: record.sell,
          category: record.category,
          closet_image: record.closet_image,
          variation: record.variation,
          DT_RowID: record.id
        }
      end
    end



end
