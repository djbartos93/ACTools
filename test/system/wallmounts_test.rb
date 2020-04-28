require "application_system_test_case"

class WallmountsTest < ApplicationSystemTestCase
  setup do
    @wallmount = wallmounts(:one)
  end

  test "visiting the index" do
    visit wallmounts_url
    assert_selector "h1", text: "Wallmounts"
  end

  test "creating a Wallmount" do
    visit wallmounts_url
    click_on "New Wallmount"

    check "Body customize" if @wallmount.body_customize
    fill_in "Body title", with: @wallmount.body_title
    fill_in "Buy", with: @wallmount.buy
    fill_in "Catalog", with: @wallmount.catalog
    fill_in "Color 1", with: @wallmount.color_1
    fill_in "Color 2", with: @wallmount.color_2
    check "Diy" if @wallmount.diy
    check "Door deco" if @wallmount.door_deco
    fill_in "Filename", with: @wallmount.filename
    fill_in "Hha concept 1", with: @wallmount.hha_concept_1
    fill_in "Hha concept 2", with: @wallmount.hha_concept_2
    fill_in "Hha series", with: @wallmount.hha_series
    fill_in "Hha set", with: @wallmount.hha_set
    fill_in "Images", with: @wallmount.images
    check "Interact" if @wallmount.interact
    fill_in "Internal", with: @wallmount.internal_id
    fill_in "Kit cost", with: @wallmount.kit_cost
    fill_in "Lighting type", with: @wallmount.lighting_type
    fill_in "Name", with: @wallmount.name
    fill_in "Pattern", with: @wallmount.pattern
    check "Pattern customize" if @wallmount.pattern_customize
    fill_in "Pattern title", with: @wallmount.pattern_title
    fill_in "Sell", with: @wallmount.sell
    fill_in "Size", with: @wallmount.size
    fill_in "Source", with: @wallmount.source
    fill_in "Source notes", with: @wallmount.source_notes
    fill_in "Tag", with: @wallmount.tag
    fill_in "Unieue entry", with: @wallmount.unieue_entry_id
    fill_in "Variant", with: @wallmount.variant_id
    fill_in "Variation", with: @wallmount.variation
    fill_in "Version", with: @wallmount.version
    click_on "Create Wallmount"

    assert_text "Wallmount was successfully created"
    click_on "Back"
  end

  test "updating a Wallmount" do
    visit wallmounts_url
    click_on "Edit", match: :first

    check "Body customize" if @wallmount.body_customize
    fill_in "Body title", with: @wallmount.body_title
    fill_in "Buy", with: @wallmount.buy
    fill_in "Catalog", with: @wallmount.catalog
    fill_in "Color 1", with: @wallmount.color_1
    fill_in "Color 2", with: @wallmount.color_2
    check "Diy" if @wallmount.diy
    check "Door deco" if @wallmount.door_deco
    fill_in "Filename", with: @wallmount.filename
    fill_in "Hha concept 1", with: @wallmount.hha_concept_1
    fill_in "Hha concept 2", with: @wallmount.hha_concept_2
    fill_in "Hha series", with: @wallmount.hha_series
    fill_in "Hha set", with: @wallmount.hha_set
    fill_in "Images", with: @wallmount.images
    check "Interact" if @wallmount.interact
    fill_in "Internal", with: @wallmount.internal_id
    fill_in "Kit cost", with: @wallmount.kit_cost
    fill_in "Lighting type", with: @wallmount.lighting_type
    fill_in "Name", with: @wallmount.name
    fill_in "Pattern", with: @wallmount.pattern
    check "Pattern customize" if @wallmount.pattern_customize
    fill_in "Pattern title", with: @wallmount.pattern_title
    fill_in "Sell", with: @wallmount.sell
    fill_in "Size", with: @wallmount.size
    fill_in "Source", with: @wallmount.source
    fill_in "Source notes", with: @wallmount.source_notes
    fill_in "Tag", with: @wallmount.tag
    fill_in "Unieue entry", with: @wallmount.unieue_entry_id
    fill_in "Variant", with: @wallmount.variant_id
    fill_in "Variation", with: @wallmount.variation
    fill_in "Version", with: @wallmount.version
    click_on "Update Wallmount"

    assert_text "Wallmount was successfully updated"
    click_on "Back"
  end

  test "destroying a Wallmount" do
    visit wallmounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wallmount was successfully destroyed"
  end
end
