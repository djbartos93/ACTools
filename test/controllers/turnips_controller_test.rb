require 'test_helper'

class TurnipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turnip = turnips(:one)
  end

  test "should get index" do
    get turnips_url
    assert_response :success
  end

  test "should get new" do
    get new_turnip_url
    assert_response :success
  end

  test "should create turnip" do
    assert_difference('Turnip.count') do
      post turnips_url, params: { turnip: { amountPurchased: @turnip.amountPurchased, madeBells: @turnip.madeBells, purchasePrice: @turnip.purchasePrice, salePrice: @turnip.salePrice, spentBells: @turnip.spentBells } }
    end

    assert_redirected_to turnip_url(Turnip.last)
  end

  test "should show turnip" do
    get turnip_url(@turnip)
    assert_response :success
  end

  test "should get edit" do
    get edit_turnip_url(@turnip)
    assert_response :success
  end

  test "should update turnip" do
    patch turnip_url(@turnip), params: { turnip: { amountPurchased: @turnip.amountPurchased, madeBells: @turnip.madeBells, purchasePrice: @turnip.purchasePrice, salePrice: @turnip.salePrice, spentBells: @turnip.spentBells } }
    assert_redirected_to turnip_url(@turnip)
  end

  test "should destroy turnip" do
    assert_difference('Turnip.count', -1) do
      delete turnip_url(@turnip)
    end

    assert_redirected_to turnips_url
  end
end
