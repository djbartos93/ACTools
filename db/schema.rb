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

ActiveRecord::Schema.define(version: 2020_04_28_174203) do

  create_table "fencings", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.boolean "diy"
    t.integer "buy"
    t.integer "sell"
    t.string "source"
    t.text "source_notes"
    t.string "version"
    t.string "filename"
    t.integer "internal_id"
    t.string "unique_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "floors", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.boolean "vfx"
    t.boolean "diy"
    t.integer "buy"
    t.integer "sell"
    t.string "color_1"
    t.string "color_2"
    t.string "source"
    t.text "source_notes"
    t.string "version"
    t.string "hha_concept_1"
    t.string "hha_concept_2"
    t.string "hha_series"
    t.string "tag"
    t.string "catalog"
    t.string "filename"
    t.integer "internal_id"
    t.string "unieque_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "housewares", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "variation"
    t.string "body_title"
    t.string "pattern"
    t.string "pattern_title"
    t.boolean "diy"
    t.boolean "body_customize"
    t.integer "kit_cost"
    t.string "buy"
    t.string "sell"
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
    t.integer "internal_id"
    t.string "unique_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "pattern_customize"
  end

  create_table "miscs", force: :cascade do |t|
    t.string "name"
    t.string "images"
    t.string "variation"
    t.string "body_title"
    t.string "pattern"
    t.string "pattern_title"
    t.boolean "diy"
    t.boolean "body_customize"
    t.boolean "pattern_customize"
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
    t.string "unieue_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "variation"
    t.string "body_title"
    t.string "pattern"
    t.string "pattern_title"
    t.boolean "diy"
    t.boolean "customize"
    t.integer "kit_cost"
    t.integer "buy"
    t.integer "sell"
    t.string "color_1"
    t.string "color_2"
    t.string "size"
    t.string "source"
    t.string "version"
    t.string "catalog"
    t.string "filename"
    t.string "variant_id"
    t.integer "internal_id"
    t.string "unique_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posters", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "buy"
    t.integer "sell"
    t.string "color_1"
    t.string "color_2"
    t.string "size"
    t.string "source"
    t.text "source_notes"
    t.string "version"
    t.string "catalog"
    t.string "filename"
    t.integer "internal_id"
    t.string "unique_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rugs", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "size"
    t.boolean "diy"
    t.integer "buy"
    t.integer "sell"
    t.string "color_1"
    t.string "color_2"
    t.string "source"
    t.text "source_notes"
    t.string "version"
    t.string "hha_concept_1"
    t.string "hha_concept_2"
    t.string "hha_series"
    t.string "tag"
    t.string "catalog"
    t.string "filename"
    t.integer "internal_id"
    t.string "unieque_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "variation"
    t.string "body_title"
    t.string "diy_boolean"
    t.boolean "customize"
    t.integer "kit_cost"
    t.integer "ueses"
    t.integer "buy"
    t.integer "sell"
    t.string "color_1"
    t.string "color_2"
    t.string "size"
    t.string "set"
    t.string "source"
    t.text "source_notes"
    t.string "version"
    t.string "filename"
    t.string "variant_id"
    t.integer "internal_id"
    t.string "unique_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "wallmounts", force: :cascade do |t|
    t.string "name"
    t.string "images"
    t.string "variation"
    t.string "body_title"
    t.string "pattern"
    t.string "pattern_title"
    t.boolean "diy"
    t.boolean "body_customize"
    t.boolean "pattern_customize"
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
    t.boolean "door_deco"
    t.string "lighting_type"
    t.string "catalog"
    t.string "filename"
    t.string "variant_id"
    t.string "internal_id"
    t.string "unieue_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wallpapers", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.boolean "vfx"
    t.string "vfx_type"
    t.boolean "diy"
    t.integer "buy"
    t.integer "sell"
    t.string "color_1"
    t.string "color_2"
    t.string "source"
    t.text "source_notes"
    t.string "catalog"
    t.string "window_type"
    t.string "window_color"
    t.string "pane_type"
    t.string "curtain"
    t.string "curtain_color"
    t.string "celing_type"
    t.string "hha_concept_1"
    t.string "hha_concept_2"
    t.string "tag"
    t.string "version"
    t.string "filename"
    t.integer "internal_id"
    t.string "unique_entry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
