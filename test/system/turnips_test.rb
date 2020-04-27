require "application_system_test_case"

class TurnipsTest < ApplicationSystemTestCase
  setup do
    @turnip = turnips(:one)
  end

  test "visiting the index" do
    visit turnips_url
    assert_selector "h1", text: "Turnips"
  end

  test "creating a Turnip" do
    visit turnips_url
    click_on "New Turnip"

    fill_in "Amountpurchased", with: @turnip.amountPurchased
    fill_in "Madebells", with: @turnip.madeBells
    fill_in "Purchaseprice", with: @turnip.purchasePrice
    fill_in "Saleprice", with: @turnip.salePrice
    fill_in "Spentbells", with: @turnip.spentBells
    click_on "Create Turnip"

    assert_text "Turnip was successfully created"
    click_on "Back"
  end

  test "updating a Turnip" do
    visit turnips_url
    click_on "Edit", match: :first

    fill_in "Amountpurchased", with: @turnip.amountPurchased
    fill_in "Madebells", with: @turnip.madeBells
    fill_in "Purchaseprice", with: @turnip.purchasePrice
    fill_in "Saleprice", with: @turnip.salePrice
    fill_in "Spentbells", with: @turnip.spentBells
    click_on "Update Turnip"

    assert_text "Turnip was successfully updated"
    click_on "Back"
  end

  test "destroying a Turnip" do
    visit turnips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turnip was successfully destroyed"
  end
end
