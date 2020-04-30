# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_30_201033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "variation"
    t.string "body_title"
    t.string "pattern"
    t.string "pattern_title"
    t.boolean "diy"
    t.string "body_customize"
    t.string "pattern_customize"
    t.integer "kit_cost"
    t.integer "buy"
    t.integer "sell"
    t.string "color_1"
    t.string "color_2"
    t.string "size"
    t.string "source"
    t.text "source_notes"
    t.string "version"
    t.string "hha_concept_1"
    t.string "hha_concept_2"
    t.string "hha_series"
    t.string "hha_set"
    t.boolean "interact"
    t.string "tag"
    t.string "speaker_type"
    t.string "lighting_type"
    t.string "catalog"
    t.string "filename"
    t.string "variant_id"
    t.string "internal_id"
    t.boolean "door_deco"
    t.boolean "vfx"
    t.string "vfx_type"
    t.string "window_type"
    t.string "window_color"
    t.string "pane_type"
    t.string "curtain_type"
    t.string "curtain_color"
    t.string "ceiling_type"
    t.string "set"
    t.integer "uses"
    t.string "closet_image"
    t.string "storage_image"
    t.string "label_themes"
    t.string "primary_shape"
    t.string "secondary_shape"
    t.string "framed_image"
    t.string "album_image"
    t.string "highres_texture"
    t.boolean "genuine"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "unique_entry_id"
    t.boolean "customize"
    t.string "style"
    t.string "art_category"
  end

  create_table "turnips", force: :cascade do |t|
    t.integer "purchasePrice"
    t.integer "amountPurchased"
    t.integer "salePrice"
    t.integer "spentBells"
    t.integer "madeBells"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "week_of"
    t.string "tap_link"
    t.integer "potential_max"
    t.string "pattern"
  end

end
