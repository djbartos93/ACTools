class ItemDatatable < ApplicationDatatable

  def additional_data
    {
      yadcf_data_5:  ["miscellaneous", "housewares", "wallpapers", "wall-mounted", "floors", "rugs", "fencing", "photos",
      "posters", "tools", "tops", "bottoms", "dresses", "headwear", "accessories", "socks", "shoes", "bags",
    "umbrellas", "music", "art", "other"]
    }
  end


  def select_options_for_categories
    Item.pluck(:category)
  end

  def catname
    @category ||= options[:category]
    puts @category
  end

  def get_raw_records
    catname
    puts "************************************* raw records items"
    # insert query here
    # User.all
    puts "is this working at the get raw records?"
    Item.all
  end

end
