require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Album image", with: @item.album_image
    fill_in "Body customize", with: @item.body_customize
    fill_in "Body title", with: @item.body_title
    fill_in "Buy", with: @item.buy
    fill_in "Catalog", with: @item.catalog
    fill_in "Category", with: @item.category
    fill_in "Ceiling type", with: @item.ceiling_type
    fill_in "Closet image", with: @item.closet_image
    fill_in "Color 1", with: @item.color_1
    fill_in "Color 2", with: @item.color_2
    fill_in "Curtain color", with: @item.curtain_color
    fill_in "Curtain type", with: @item.curtain_type
    check "Diy" if @item.diy
    check "Door deco" if @item.door_deco
    fill_in "Filename", with: @item.filename
    fill_in "Framed image", with: @item.framed_image
    check "Genuine" if @item.genuine
    fill_in "Hha concept 1", with: @item.hha_concept_1
    fill_in "Hha concept 2", with: @item.hha_concept_2
    fill_in "Hha series", with: @item.hha_series
    fill_in "Hha set", with: @item.hha_set
    fill_in "High-res texture", with: @item.high-res_texture
    fill_in "Image", with: @item.image
    check "Interact" if @item.interact
    fill_in "Internal", with: @item.internal_id
    fill_in "Kit cost", with: @item.kit_cost
    fill_in "Label themes", with: @item.label_themes
    fill_in "Lighting type", with: @item.lighting_type
    fill_in "Name", with: @item.name
    fill_in "Pane type", with: @item.pane_type
    fill_in "Patern title", with: @item.patern_title
    fill_in "Pattern", with: @item.pattern
    fill_in "Pattern customize", with: @item.pattern_customize
    fill_in "Primary shape", with: @item.primary_shape
    fill_in "Secondary shape", with: @item.secondary_shape
    fill_in "Sell", with: @item.sell
    fill_in "Set", with: @item.set
    fill_in "Size", with: @item.size
    fill_in "Source", with: @item.source
    fill_in "Source notes", with: @item.source_notes
    fill_in "Speaker type", with: @item.speaker_type
    fill_in "Storage image", with: @item.storage_image
    check "Tag" if @item.tag
    fill_in "Uses", with: @item.uses
    fill_in "Variant", with: @item.variant_id
    fill_in "Variation", with: @item.variation
    fill_in "Version", with: @item.version
    check "Vfx" if @item.vfx
    fill_in "Vfx type", with: @item.vfx_type
    fill_in "Window color", with: @item.window_color
    fill_in "Window type", with: @item.window_type
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Album image", with: @item.album_image
    fill_in "Body customize", with: @item.body_customize
    fill_in "Body title", with: @item.body_title
    fill_in "Buy", with: @item.buy
    fill_in "Catalog", with: @item.catalog
    fill_in "Category", with: @item.category
    fill_in "Ceiling type", with: @item.ceiling_type
    fill_in "Closet image", with: @item.closet_image
    fill_in "Color 1", with: @item.color_1
    fill_in "Color 2", with: @item.color_2
    fill_in "Curtain color", with: @item.curtain_color
    fill_in "Curtain type", with: @item.curtain_type
    check "Diy" if @item.diy
    check "Door deco" if @item.door_deco
    fill_in "Filename", with: @item.filename
    fill_in "Framed image", with: @item.framed_image
    check "Genuine" if @item.genuine
    fill_in "Hha concept 1", with: @item.hha_concept_1
    fill_in "Hha concept 2", with: @item.hha_concept_2
    fill_in "Hha series", with: @item.hha_series
    fill_in "Hha set", with: @item.hha_set
    fill_in "High-res texture", with: @item.high-res_texture
    fill_in "Image", with: @item.image
    check "Interact" if @item.interact
    fill_in "Internal", with: @item.internal_id
    fill_in "Kit cost", with: @item.kit_cost
    fill_in "Label themes", with: @item.label_themes
    fill_in "Lighting type", with: @item.lighting_type
    fill_in "Name", with: @item.name
    fill_in "Pane type", with: @item.pane_type
    fill_in "Patern title", with: @item.patern_title
    fill_in "Pattern", with: @item.pattern
    fill_in "Pattern customize", with: @item.pattern_customize
    fill_in "Primary shape", with: @item.primary_shape
    fill_in "Secondary shape", with: @item.secondary_shape
    fill_in "Sell", with: @item.sell
    fill_in "Set", with: @item.set
    fill_in "Size", with: @item.size
    fill_in "Source", with: @item.source
    fill_in "Source notes", with: @item.source_notes
    fill_in "Speaker type", with: @item.speaker_type
    fill_in "Storage image", with: @item.storage_image
    check "Tag" if @item.tag
    fill_in "Uses", with: @item.uses
    fill_in "Variant", with: @item.variant_id
    fill_in "Variation", with: @item.variation
    fill_in "Version", with: @item.version
    check "Vfx" if @item.vfx
    fill_in "Vfx type", with: @item.vfx_type
    fill_in "Window color", with: @item.window_color
    fill_in "Window type", with: @item.window_type
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
