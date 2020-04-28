require "application_system_test_case"

class HousewaresTest < ApplicationSystemTestCase
  setup do
    @houseware = housewares(:one)
  end

  test "visiting the index" do
    visit housewares_url
    assert_selector "h1", text: "Housewares"
  end

  test "creating a Houseware" do
    visit housewares_url
    click_on "New Houseware"

    check "Body customize" if @houseware.body_customize
    fill_in "Body title", with: @houseware.body_title
    fill_in "Buy", with: @houseware.buy
    fill_in "Catalog", with: @houseware.catalog
    fill_in "Color1", with: @houseware.color1
    fill_in "Color2", with: @houseware.color2
    check "Diy" if @houseware.diy
    fill_in "Filename", with: @houseware.filename
    fill_in "Hha concept1", with: @houseware.hha_concept1
    fill_in "Hha concept2", with: @houseware.hha_concept2
    fill_in "Hha series", with: @houseware.hha_series
    fill_in "Hha set", with: @houseware.hha_set
    fill_in "Image", with: @houseware.image
    check "Interact" if @houseware.interact
    fill_in "Internal", with: @houseware.internal_id
    fill_in "Kit cost", with: @houseware.kit_cost
    fill_in "Listing type", with: @houseware.listing_type
    fill_in "Name", with: @houseware.name
    fill_in "Pattern", with: @houseware.pattern
    fill_in "Sell", with: @houseware.sell
    fill_in "Size", with: @houseware.size
    fill_in "Source", with: @houseware.source
    fill_in "Source notes", with: @houseware.source_notes
    fill_in "Speaker type", with: @houseware.speaker_type
    fill_in "Tag", with: @houseware.tag
    fill_in "Unique entry", with: @houseware.unique_entry_id
    fill_in "Variant", with: @houseware.variant_id
    fill_in "Variation", with: @houseware.variation
    fill_in "Version", with: @houseware.version
    click_on "Create Houseware"

    assert_text "Houseware was successfully created"
    click_on "Back"
  end

  test "updating a Houseware" do
    visit housewares_url
    click_on "Edit", match: :first

    check "Body customize" if @houseware.body_customize
    fill_in "Body title", with: @houseware.body_title
    fill_in "Buy", with: @houseware.buy
    fill_in "Catalog", with: @houseware.catalog
    fill_in "Color1", with: @houseware.color1
    fill_in "Color2", with: @houseware.color2
    check "Diy" if @houseware.diy
    fill_in "Filename", with: @houseware.filename
    fill_in "Hha concept1", with: @houseware.hha_concept1
    fill_in "Hha concept2", with: @houseware.hha_concept2
    fill_in "Hha series", with: @houseware.hha_series
    fill_in "Hha set", with: @houseware.hha_set
    fill_in "Image", with: @houseware.image
    check "Interact" if @houseware.interact
    fill_in "Internal", with: @houseware.internal_id
    fill_in "Kit cost", with: @houseware.kit_cost
    fill_in "Listing type", with: @houseware.listing_type
    fill_in "Name", with: @houseware.name
    fill_in "Pattern", with: @houseware.pattern
    fill_in "Sell", with: @houseware.sell
    fill_in "Size", with: @houseware.size
    fill_in "Source", with: @houseware.source
    fill_in "Source notes", with: @houseware.source_notes
    fill_in "Speaker type", with: @houseware.speaker_type
    fill_in "Tag", with: @houseware.tag
    fill_in "Unique entry", with: @houseware.unique_entry_id
    fill_in "Variant", with: @houseware.variant_id
    fill_in "Variation", with: @houseware.variation
    fill_in "Version", with: @houseware.version
    click_on "Update Houseware"

    assert_text "Houseware was successfully updated"
    click_on "Back"
  end

  test "destroying a Houseware" do
    visit housewares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Houseware was successfully destroyed"
  end
end
