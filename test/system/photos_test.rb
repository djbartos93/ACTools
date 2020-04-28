require "application_system_test_case"

class PhotosTest < ApplicationSystemTestCase
  setup do
    @photo = photos(:one)
  end

  test "visiting the index" do
    visit photos_url
    assert_selector "h1", text: "Photos"
  end

  test "creating a Photo" do
    visit photos_url
    click_on "New Photo"

    fill_in "Body title", with: @photo.body_title
    fill_in "Buy", with: @photo.buy
    fill_in "Catalog", with: @photo.catalog
    fill_in "Color 1", with: @photo.color_1
    fill_in "Color 2", with: @photo.color_2
    check "Customize" if @photo.customize
    check "Diy" if @photo.diy
    fill_in "Filename", with: @photo.filename
    fill_in "Image", with: @photo.image
    fill_in "Internal", with: @photo.internal_id
    fill_in "Kit cost", with: @photo.kit_cost
    fill_in "Name", with: @photo.name
    fill_in "Pattern", with: @photo.pattern
    fill_in "Pattern title", with: @photo.pattern_title
    fill_in "Sell", with: @photo.sell
    fill_in "Size", with: @photo.size
    fill_in "Source", with: @photo.source
    fill_in "Unique entry", with: @photo.unique_entry_id
    fill_in "Variant", with: @photo.variant_id
    fill_in "Variation", with: @photo.variation
    fill_in "Version", with: @photo.version
    click_on "Create Photo"

    assert_text "Photo was successfully created"
    click_on "Back"
  end

  test "updating a Photo" do
    visit photos_url
    click_on "Edit", match: :first

    fill_in "Body title", with: @photo.body_title
    fill_in "Buy", with: @photo.buy
    fill_in "Catalog", with: @photo.catalog
    fill_in "Color 1", with: @photo.color_1
    fill_in "Color 2", with: @photo.color_2
    check "Customize" if @photo.customize
    check "Diy" if @photo.diy
    fill_in "Filename", with: @photo.filename
    fill_in "Image", with: @photo.image
    fill_in "Internal", with: @photo.internal_id
    fill_in "Kit cost", with: @photo.kit_cost
    fill_in "Name", with: @photo.name
    fill_in "Pattern", with: @photo.pattern
    fill_in "Pattern title", with: @photo.pattern_title
    fill_in "Sell", with: @photo.sell
    fill_in "Size", with: @photo.size
    fill_in "Source", with: @photo.source
    fill_in "Unique entry", with: @photo.unique_entry_id
    fill_in "Variant", with: @photo.variant_id
    fill_in "Variation", with: @photo.variation
    fill_in "Version", with: @photo.version
    click_on "Update Photo"

    assert_text "Photo was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo" do
    visit photos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo was successfully destroyed"
  end
end
