require "application_system_test_case"

class ToolsTest < ApplicationSystemTestCase
  setup do
    @tool = tools(:one)
  end

  test "visiting the index" do
    visit tools_url
    assert_selector "h1", text: "Tools"
  end

  test "creating a Tool" do
    visit tools_url
    click_on "New Tool"

    fill_in "Body title", with: @tool.body_title
    fill_in "Buy", with: @tool.buy
    fill_in "Color 1", with: @tool.color_1
    fill_in "Color 2", with: @tool.color_2
    check "Customize" if @tool.customize
    fill_in "Diy boolean", with: @tool.diy_boolean
    fill_in "Filename", with: @tool.filename
    fill_in "Image", with: @tool.image
    fill_in "Internal", with: @tool.internal_id
    fill_in "Kit cost", with: @tool.kit_cost
    fill_in "Name", with: @tool.name
    fill_in "Sell", with: @tool.sell
    fill_in "Set", with: @tool.set
    fill_in "Size", with: @tool.size
    fill_in "Source", with: @tool.source
    fill_in "Source notes", with: @tool.source_notes
    fill_in "Ueses", with: @tool.ueses
    fill_in "Unique entry", with: @tool.unique_entry_id
    fill_in "Variant", with: @tool.variant_id
    fill_in "Variation", with: @tool.variation
    fill_in "Version", with: @tool.version
    click_on "Create Tool"

    assert_text "Tool was successfully created"
    click_on "Back"
  end

  test "updating a Tool" do
    visit tools_url
    click_on "Edit", match: :first

    fill_in "Body title", with: @tool.body_title
    fill_in "Buy", with: @tool.buy
    fill_in "Color 1", with: @tool.color_1
    fill_in "Color 2", with: @tool.color_2
    check "Customize" if @tool.customize
    fill_in "Diy boolean", with: @tool.diy_boolean
    fill_in "Filename", with: @tool.filename
    fill_in "Image", with: @tool.image
    fill_in "Internal", with: @tool.internal_id
    fill_in "Kit cost", with: @tool.kit_cost
    fill_in "Name", with: @tool.name
    fill_in "Sell", with: @tool.sell
    fill_in "Set", with: @tool.set
    fill_in "Size", with: @tool.size
    fill_in "Source", with: @tool.source
    fill_in "Source notes", with: @tool.source_notes
    fill_in "Ueses", with: @tool.ueses
    fill_in "Unique entry", with: @tool.unique_entry_id
    fill_in "Variant", with: @tool.variant_id
    fill_in "Variation", with: @tool.variation
    fill_in "Version", with: @tool.version
    click_on "Update Tool"

    assert_text "Tool was successfully updated"
    click_on "Back"
  end

  test "destroying a Tool" do
    visit tools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tool was successfully destroyed"
  end
end
