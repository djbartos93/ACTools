require 'test_helper'

class WallmountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallmount = wallmounts(:one)
  end

  test "should get index" do
    get wallmounts_url
    assert_response :success
  end

  test "should get new" do
    get new_wallmount_url
    assert_response :success
  end

  test "should create wallmount" do
    assert_difference('Wallmount.count') do
      post wallmounts_url, params: { wallmount: { body_customize: @wallmount.body_customize, body_title: @wallmount.body_title, buy: @wallmount.buy, catalog: @wallmount.catalog, color_1: @wallmount.color_1, color_2: @wallmount.color_2, diy: @wallmount.diy, door_deco: @wallmount.door_deco, filename: @wallmount.filename, hha_concept_1: @wallmount.hha_concept_1, hha_concept_2: @wallmount.hha_concept_2, hha_series: @wallmount.hha_series, hha_set: @wallmount.hha_set, images: @wallmount.images, interact: @wallmount.interact, internal_id: @wallmount.internal_id, kit_cost: @wallmount.kit_cost, lighting_type: @wallmount.lighting_type, name: @wallmount.name, pattern: @wallmount.pattern, pattern_customize: @wallmount.pattern_customize, pattern_title: @wallmount.pattern_title, sell: @wallmount.sell, size: @wallmount.size, source: @wallmount.source, source_notes: @wallmount.source_notes, tag: @wallmount.tag, unieue_entry_id: @wallmount.unieue_entry_id, variant_id: @wallmount.variant_id, variation: @wallmount.variation, version: @wallmount.version } }
    end

    assert_redirected_to wallmount_url(Wallmount.last)
  end

  test "should show wallmount" do
    get wallmount_url(@wallmount)
    assert_response :success
  end

  test "should get edit" do
    get edit_wallmount_url(@wallmount)
    assert_response :success
  end

  test "should update wallmount" do
    patch wallmount_url(@wallmount), params: { wallmount: { body_customize: @wallmount.body_customize, body_title: @wallmount.body_title, buy: @wallmount.buy, catalog: @wallmount.catalog, color_1: @wallmount.color_1, color_2: @wallmount.color_2, diy: @wallmount.diy, door_deco: @wallmount.door_deco, filename: @wallmount.filename, hha_concept_1: @wallmount.hha_concept_1, hha_concept_2: @wallmount.hha_concept_2, hha_series: @wallmount.hha_series, hha_set: @wallmount.hha_set, images: @wallmount.images, interact: @wallmount.interact, internal_id: @wallmount.internal_id, kit_cost: @wallmount.kit_cost, lighting_type: @wallmount.lighting_type, name: @wallmount.name, pattern: @wallmount.pattern, pattern_customize: @wallmount.pattern_customize, pattern_title: @wallmount.pattern_title, sell: @wallmount.sell, size: @wallmount.size, source: @wallmount.source, source_notes: @wallmount.source_notes, tag: @wallmount.tag, unieue_entry_id: @wallmount.unieue_entry_id, variant_id: @wallmount.variant_id, variation: @wallmount.variation, version: @wallmount.version } }
    assert_redirected_to wallmount_url(@wallmount)
  end

  test "should destroy wallmount" do
    assert_difference('Wallmount.count', -1) do
      delete wallmount_url(@wallmount)
    end

    assert_redirected_to wallmounts_url
  end
end
