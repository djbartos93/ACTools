require "application_system_test_case"

class PostersTest < ApplicationSystemTestCase
  setup do
    @poster = posters(:one)
  end

  test "visiting the index" do
    visit posters_url
    assert_selector "h1", text: "Posters"
  end

  test "creating a Poster" do
    visit posters_url
    click_on "New Poster"

    fill_in "Buy", with: @poster.buy
    fill_in "Catalog", with: @poster.catalog
    fill_in "Color 1", with: @poster.color_1
    fill_in "Color 2", with: @poster.color_2
    fill_in "Filename", with: @poster.filename
    fill_in "Image", with: @poster.image
    fill_in "Internal", with: @poster.internal_id
    fill_in "Name", with: @poster.name
    fill_in "Sell", with: @poster.sell
    fill_in "Size", with: @poster.size
    fill_in "Source", with: @poster.source
    fill_in "Source notes", with: @poster.source_notes
    fill_in "Unique entry", with: @poster.unique_entry_id
    fill_in "Version", with: @poster.version
    click_on "Create Poster"

    assert_text "Poster was successfully created"
    click_on "Back"
  end

  test "updating a Poster" do
    visit posters_url
    click_on "Edit", match: :first

    fill_in "Buy", with: @poster.buy
    fill_in "Catalog", with: @poster.catalog
    fill_in "Color 1", with: @poster.color_1
    fill_in "Color 2", with: @poster.color_2
    fill_in "Filename", with: @poster.filename
    fill_in "Image", with: @poster.image
    fill_in "Internal", with: @poster.internal_id
    fill_in "Name", with: @poster.name
    fill_in "Sell", with: @poster.sell
    fill_in "Size", with: @poster.size
    fill_in "Source", with: @poster.source
    fill_in "Source notes", with: @poster.source_notes
    fill_in "Unique entry", with: @poster.unique_entry_id
    fill_in "Version", with: @poster.version
    click_on "Update Poster"

    assert_text "Poster was successfully updated"
    click_on "Back"
  end

  test "destroying a Poster" do
    visit posters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poster was successfully destroyed"
  end
end
