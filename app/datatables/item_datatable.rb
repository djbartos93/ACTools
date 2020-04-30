class ItemDatatable < ApplicationDatatable

  def additional_data
    {
      yadcf_data_5:  ["miscellaneous", "housewares", "wallpapers", "wall-mounted", "floors", "rugs", "fencing", "photos",
      "posters", "tools", "tops", "bottoms", "dresses", "headwear", "accessories", "socks", "shoes", "bags",
    "umbrellas", "music", "art", "other"],
    yadcf_data_2: select_options_for_variation
    }
  end


  def select_options_for_variation
    uniquevar = Item.distinct.pluck(:variation)
    uniquevar.map { |object| { value: object, label: object.to_s } }
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
