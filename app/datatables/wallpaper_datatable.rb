class WallpaperDatatable < ApplicationDatatable

  def get_raw_records
    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& raw records wallitem"
    # insert query here
    # User.all
    puts "is this working at the get raw records?"
    Item.where(category: 'wallpapers')
  end

end
