require "application_system_test_case"

class FencingsTest < ApplicationSystemTestCase
  setup do
    @fencing = fencings(:one)
  end

  test "visiting the index" do
    visit fencings_url
    assert_selector "h1", text: "Fencings"
  end

  test "creating a Fencing" do
    visit fencings_url
    click_on "New Fencing"

    fill_in "Buy", with: @fencing.buy
    check "Diy" if @fencing.diy
    fill_in "Filename", with: @fencing.filename
    fill_in "Image", with: @fencing.image
    fill_in "Internal", with: @fencing.internal_id
    fill_in "Name", with: @fencing.name
    fill_in "Sell", with: @fencing.sell
    fill_in "Source", with: @fencing.source
    fill_in "Source notes", with: @fencing.source_notes
    fill_in "Unique entry", with: @fencing.unique_entry_id
    fill_in "Version", with: @fencing.version
    click_on "Create Fencing"

    assert_text "Fencing was successfully created"
    click_on "Back"
  end

  test "updating a Fencing" do
    visit fencings_url
    click_on "Edit", match: :first

    fill_in "Buy", with: @fencing.buy
    check "Diy" if @fencing.diy
    fill_in "Filename", with: @fencing.filename
    fill_in "Image", with: @fencing.image
    fill_in "Internal", with: @fencing.internal_id
    fill_in "Name", with: @fencing.name
    fill_in "Sell", with: @fencing.sell
    fill_in "Source", with: @fencing.source
    fill_in "Source notes", with: @fencing.source_notes
    fill_in "Unique entry", with: @fencing.unique_entry_id
    fill_in "Version", with: @fencing.version
    click_on "Update Fencing"

    assert_text "Fencing was successfully updated"
    click_on "Back"
  end

  test "destroying a Fencing" do
    visit fencings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fencing was successfully destroyed"
  end
end
