require "application_system_test_case"

class WallpapersTest < ApplicationSystemTestCase
  setup do
    @wallpaper = wallpapers(:one)
  end

  test "visiting the index" do
    visit wallpapers_url
    assert_selector "h1", text: "Wallpapers"
  end

  test "creating a Wallpaper" do
    visit wallpapers_url
    click_on "New Wallpaper"

    fill_in "Buy", with: @wallpaper.buy
    fill_in "Catalog", with: @wallpaper.catalog
    fill_in "Celing type", with: @wallpaper.celing_type
    fill_in "Color 1", with: @wallpaper.color_1
    fill_in "Color 2", with: @wallpaper.color_2
    fill_in "Curtain", with: @wallpaper.curtain
    fill_in "Curtain color", with: @wallpaper.curtain_color
    check "Diy" if @wallpaper.diy
    fill_in "Filename", with: @wallpaper.filename
    fill_in "Hha concept 1", with: @wallpaper.hha_concept_1
    fill_in "Hha concept 2", with: @wallpaper.hha_concept_2
    fill_in "Image", with: @wallpaper.image
    fill_in "Internal", with: @wallpaper.internal_id
    fill_in "Name", with: @wallpaper.name
    fill_in "Pane type", with: @wallpaper.pane_type
    fill_in "Sell", with: @wallpaper.sell
    fill_in "Source", with: @wallpaper.source
    fill_in "Source notes", with: @wallpaper.source_notes
    fill_in "Tag", with: @wallpaper.tag
    fill_in "Unique entry", with: @wallpaper.unique_entry_id
    fill_in "Version", with: @wallpaper.version
    check "Vfx" if @wallpaper.vfx
    fill_in "Vfx type", with: @wallpaper.vfx_type
    fill_in "Window color", with: @wallpaper.window_color
    fill_in "Window type", with: @wallpaper.window_type
    click_on "Create Wallpaper"

    assert_text "Wallpaper was successfully created"
    click_on "Back"
  end

  test "updating a Wallpaper" do
    visit wallpapers_url
    click_on "Edit", match: :first

    fill_in "Buy", with: @wallpaper.buy
    fill_in "Catalog", with: @wallpaper.catalog
    fill_in "Celing type", with: @wallpaper.celing_type
    fill_in "Color 1", with: @wallpaper.color_1
    fill_in "Color 2", with: @wallpaper.color_2
    fill_in "Curtain", with: @wallpaper.curtain
    fill_in "Curtain color", with: @wallpaper.curtain_color
    check "Diy" if @wallpaper.diy
    fill_in "Filename", with: @wallpaper.filename
    fill_in "Hha concept 1", with: @wallpaper.hha_concept_1
    fill_in "Hha concept 2", with: @wallpaper.hha_concept_2
    fill_in "Image", with: @wallpaper.image
    fill_in "Internal", with: @wallpaper.internal_id
    fill_in "Name", with: @wallpaper.name
    fill_in "Pane type", with: @wallpaper.pane_type
    fill_in "Sell", with: @wallpaper.sell
    fill_in "Source", with: @wallpaper.source
    fill_in "Source notes", with: @wallpaper.source_notes
    fill_in "Tag", with: @wallpaper.tag
    fill_in "Unique entry", with: @wallpaper.unique_entry_id
    fill_in "Version", with: @wallpaper.version
    check "Vfx" if @wallpaper.vfx
    fill_in "Vfx type", with: @wallpaper.vfx_type
    fill_in "Window color", with: @wallpaper.window_color
    fill_in "Window type", with: @wallpaper.window_type
    click_on "Update Wallpaper"

    assert_text "Wallpaper was successfully updated"
    click_on "Back"
  end

  test "destroying a Wallpaper" do
    visit wallpapers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wallpaper was successfully destroyed"
  end
end
