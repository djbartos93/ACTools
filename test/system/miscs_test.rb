require "application_system_test_case"

class MiscsTest < ApplicationSystemTestCase
  setup do
    @misc = miscs(:one)
  end

  test "visiting the index" do
    visit miscs_url
    assert_selector "h1", text: "Miscs"
  end

  test "creating a Misc" do
    visit miscs_url
    click_on "New Misc"

    check "Body customize" if @misc.body_customize
    fill_in "Body title", with: @misc.body_title
    fill_in "Buy", with: @misc.buy
    fill_in "Catalog", with: @misc.catalog
    fill_in "Color 1", with: @misc.color_1
    fill_in "Color 2", with: @misc.color_2
    check "Diy" if @misc.diy
    fill_in "Filename", with: @misc.filename
    fill_in "Hha concept 1", with: @misc.hha_concept_1
    fill_in "Hha concept 2", with: @misc.hha_concept_2
    fill_in "Hha series", with: @misc.hha_series
    fill_in "Hha set", with: @misc.hha_set
    fill_in "Images", with: @misc.images
    check "Interact" if @misc.interact
    fill_in "Internal", with: @misc.internal_id
    fill_in "Kit cost", with: @misc.kit_cost
    fill_in "Lighting type", with: @misc.lighting_type
    fill_in "Name", with: @misc.name
    fill_in "Pattern", with: @misc.pattern
    check "Pattern customize" if @misc.pattern_customize
    fill_in "Pattern title", with: @misc.pattern_title
    fill_in "Sell", with: @misc.sell
    fill_in "Size", with: @misc.size
    fill_in "Source", with: @misc.source
    fill_in "Source notes", with: @misc.source_notes
    fill_in "Speaker type", with: @misc.speaker_type
    fill_in "Tag", with: @misc.tag
    fill_in "Unieue entry", with: @misc.unieue_entry_id
    fill_in "Variant", with: @misc.variant_id
    fill_in "Variation", with: @misc.variation
    fill_in "Version", with: @misc.version
    click_on "Create Misc"

    assert_text "Misc was successfully created"
    click_on "Back"
  end

  test "updating a Misc" do
    visit miscs_url
    click_on "Edit", match: :first

    check "Body customize" if @misc.body_customize
    fill_in "Body title", with: @misc.body_title
    fill_in "Buy", with: @misc.buy
    fill_in "Catalog", with: @misc.catalog
    fill_in "Color 1", with: @misc.color_1
    fill_in "Color 2", with: @misc.color_2
    check "Diy" if @misc.diy
    fill_in "Filename", with: @misc.filename
    fill_in "Hha concept 1", with: @misc.hha_concept_1
    fill_in "Hha concept 2", with: @misc.hha_concept_2
    fill_in "Hha series", with: @misc.hha_series
    fill_in "Hha set", with: @misc.hha_set
    fill_in "Images", with: @misc.images
    check "Interact" if @misc.interact
    fill_in "Internal", with: @misc.internal_id
    fill_in "Kit cost", with: @misc.kit_cost
    fill_in "Lighting type", with: @misc.lighting_type
    fill_in "Name", with: @misc.name
    fill_in "Pattern", with: @misc.pattern
    check "Pattern customize" if @misc.pattern_customize
    fill_in "Pattern title", with: @misc.pattern_title
    fill_in "Sell", with: @misc.sell
    fill_in "Size", with: @misc.size
    fill_in "Source", with: @misc.source
    fill_in "Source notes", with: @misc.source_notes
    fill_in "Speaker type", with: @misc.speaker_type
    fill_in "Tag", with: @misc.tag
    fill_in "Unieue entry", with: @misc.unieue_entry_id
    fill_in "Variant", with: @misc.variant_id
    fill_in "Variation", with: @misc.variation
    fill_in "Version", with: @misc.version
    click_on "Update Misc"

    assert_text "Misc was successfully updated"
    click_on "Back"
  end

  test "destroying a Misc" do
    visit miscs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Misc was successfully destroyed"
  end
end
