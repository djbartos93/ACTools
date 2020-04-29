class WallitemDatatable < ApplicationDatatable

  def catname
    @category ||= options[:category]
    puts @category
  end

  def get_raw_records
    catname
    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& raw records wallitem"
    # insert query here
    # User.all
    puts "is this working at the get raw records?"
    Item.where(category: options[:category])

  end



end
