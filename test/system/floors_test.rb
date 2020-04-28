require "application_system_test_case"

class FloorsTest < ApplicationSystemTestCase
  setup do
    @floor = floors(:one)
  end

  test "visiting the index" do
    visit floors_url
    assert_selector "h1", text: "Floors"
  end

  test "creating a Floor" do
    visit floors_url
    click_on "New Floor"

    fill_in "Buy", with: @floor.buy
    fill_in "Catalog", with: @floor.catalog
    fill_in "Color 1", with: @floor.color_1
    fill_in "Color 2", with: @floor.color_2
    check "Diy" if @floor.diy
    fill_in "Filename", with: @floor.filename
    fill_in "Hha concept 1", with: @floor.hha_concept_1
    fill_in "Hha concept 2", with: @floor.hha_concept_2
    fill_in "Hha series", with: @floor.hha_series
    fill_in "Image", with: @floor.image
    fill_in "Internal", with: @floor.internal_id
    fill_in "Name", with: @floor.name
    fill_in "Sell", with: @floor.sell
    fill_in "Source", with: @floor.source
    fill_in "Source notes", with: @floor.source_notes
    fill_in "Tag", with: @floor.tag
    fill_in "Unieque entry", with: @floor.unieque_entry_id
    fill_in "Version", with: @floor.version
    check "Vfx" if @floor.vfx
    click_on "Create Floor"

    assert_text "Floor was successfully created"
    click_on "Back"
  end

  test "updating a Floor" do
    visit floors_url
    click_on "Edit", match: :first

    fill_in "Buy", with: @floor.buy
    fill_in "Catalog", with: @floor.catalog
    fill_in "Color 1", with: @floor.color_1
    fill_in "Color 2", with: @floor.color_2
    check "Diy" if @floor.diy
    fill_in "Filename", with: @floor.filename
    fill_in "Hha concept 1", with: @floor.hha_concept_1
    fill_in "Hha concept 2", with: @floor.hha_concept_2
    fill_in "Hha series", with: @floor.hha_series
    fill_in "Image", with: @floor.image
    fill_in "Internal", with: @floor.internal_id
    fill_in "Name", with: @floor.name
    fill_in "Sell", with: @floor.sell
    fill_in "Source", with: @floor.source
    fill_in "Source notes", with: @floor.source_notes
    fill_in "Tag", with: @floor.tag
    fill_in "Unieque entry", with: @floor.unieque_entry_id
    fill_in "Version", with: @floor.version
    check "Vfx" if @floor.vfx
    click_on "Update Floor"

    assert_text "Floor was successfully updated"
    click_on "Back"
  end

  test "destroying a Floor" do
    visit floors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Floor was successfully destroyed"
  end
end
