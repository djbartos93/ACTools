require 'test_helper'

class HousewaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @houseware = housewares(:one)
  end

  test "should get index" do
    get housewares_url
    assert_response :success
  end

  test "should get new" do
    get new_houseware_url
    assert_response :success
  end

  test "should create houseware" do
    assert_difference('Houseware.count') do
      post housewares_url, params: { houseware: { body_customize: @houseware.body_customize, body_title: @houseware.body_title, buy: @houseware.buy, catalog: @houseware.catalog, color1: @houseware.color1, color2: @houseware.color2, diy: @houseware.diy, filename: @houseware.filename, hha_concept1: @houseware.hha_concept1, hha_concept2: @houseware.hha_concept2, hha_series: @houseware.hha_series, hha_set: @houseware.hha_set, image: @houseware.image, interact: @houseware.interact, internal_id: @houseware.internal_id, kit_cost: @houseware.kit_cost, listing_type: @houseware.listing_type, name: @houseware.name, pattern: @houseware.pattern, sell: @houseware.sell, size: @houseware.size, source: @houseware.source, source_notes: @houseware.source_notes, speaker_type: @houseware.speaker_type, tag: @houseware.tag, unique_entry_id: @houseware.unique_entry_id, variant_id: @houseware.variant_id, variation: @houseware.variation, version: @houseware.version } }
    end

    assert_redirected_to houseware_url(Houseware.last)
  end

  test "should show houseware" do
    get houseware_url(@houseware)
    assert_response :success
  end

  test "should get edit" do
    get edit_houseware_url(@houseware)
    assert_response :success
  end

  test "should update houseware" do
    patch houseware_url(@houseware), params: { houseware: { body_customize: @houseware.body_customize, body_title: @houseware.body_title, buy: @houseware.buy, catalog: @houseware.catalog, color1: @houseware.color1, color2: @houseware.color2, diy: @houseware.diy, filename: @houseware.filename, hha_concept1: @houseware.hha_concept1, hha_concept2: @houseware.hha_concept2, hha_series: @houseware.hha_series, hha_set: @houseware.hha_set, image: @houseware.image, interact: @houseware.interact, internal_id: @houseware.internal_id, kit_cost: @houseware.kit_cost, listing_type: @houseware.listing_type, name: @houseware.name, pattern: @houseware.pattern, sell: @houseware.sell, size: @houseware.size, source: @houseware.source, source_notes: @houseware.source_notes, speaker_type: @houseware.speaker_type, tag: @houseware.tag, unique_entry_id: @houseware.unique_entry_id, variant_id: @houseware.variant_id, variation: @houseware.variation, version: @houseware.version } }
    assert_redirected_to houseware_url(@houseware)
  end

  test "should destroy houseware" do
    assert_difference('Houseware.count', -1) do
      delete houseware_url(@houseware)
    end

    assert_redirected_to housewares_url
  end
end
