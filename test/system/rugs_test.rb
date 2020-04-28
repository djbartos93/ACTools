require "application_system_test_case"

class RugsTest < ApplicationSystemTestCase
  setup do
    @rug = rugs(:one)
  end

  test "visiting the index" do
    visit rugs_url
    assert_selector "h1", text: "Rugs"
  end

  test "creating a Rug" do
    visit rugs_url
    click_on "New Rug"

    fill_in "Buy", with: @rug.buy
    fill_in "Catalog", with: @rug.catalog
    fill_in "Color 1", with: @rug.color_1
    fill_in "Color 2", with: @rug.color_2
    check "Diy" if @rug.diy
    fill_in "Filename", with: @rug.filename
    fill_in "Hha concept 1", with: @rug.hha_concept_1
    fill_in "Hha concept 2", with: @rug.hha_concept_2
    fill_in "Hha series", with: @rug.hha_series
    fill_in "Image", with: @rug.image
    fill_in "Internal", with: @rug.internal_id
    fill_in "Name", with: @rug.name
    fill_in "Sell", with: @rug.sell
    fill_in "Size", with: @rug.size
    fill_in "Source", with: @rug.source
    fill_in "Source notes", with: @rug.source_notes
    fill_in "Tag", with: @rug.tag
    fill_in "Unieque entry", with: @rug.unieque_entry_id
    fill_in "Version", with: @rug.version
    click_on "Create Rug"

    assert_text "Rug was successfully created"
    click_on "Back"
  end

  test "updating a Rug" do
    visit rugs_url
    click_on "Edit", match: :first

    fill_in "Buy", with: @rug.buy
    fill_in "Catalog", with: @rug.catalog
    fill_in "Color 1", with: @rug.color_1
    fill_in "Color 2", with: @rug.color_2
    check "Diy" if @rug.diy
    fill_in "Filename", with: @rug.filename
    fill_in "Hha concept 1", with: @rug.hha_concept_1
    fill_in "Hha concept 2", with: @rug.hha_concept_2
    fill_in "Hha series", with: @rug.hha_series
    fill_in "Image", with: @rug.image
    fill_in "Internal", with: @rug.internal_id
    fill_in "Name", with: @rug.name
    fill_in "Sell", with: @rug.sell
    fill_in "Size", with: @rug.size
    fill_in "Source", with: @rug.source
    fill_in "Source notes", with: @rug.source_notes
    fill_in "Tag", with: @rug.tag
    fill_in "Unieque entry", with: @rug.unieque_entry_id
    fill_in "Version", with: @rug.version
    click_on "Update Rug"

    assert_text "Rug was successfully updated"
    click_on "Back"
  end

  test "destroying a Rug" do
    visit rugs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rug was successfully destroyed"
  end
end
