require 'test_helper'

class MiscsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @misc = miscs(:one)
  end

  test "should get index" do
    get miscs_url
    assert_response :success
  end

  test "should get new" do
    get new_misc_url
    assert_response :success
  end

  test "should create misc" do
    assert_difference('Misc.count') do
      post miscs_url, params: { misc: { body_customize: @misc.body_customize, body_title: @misc.body_title, buy: @misc.buy, catalog: @misc.catalog, color_1: @misc.color_1, color_2: @misc.color_2, diy: @misc.diy, filename: @misc.filename, hha_concept_1: @misc.hha_concept_1, hha_concept_2: @misc.hha_concept_2, hha_series: @misc.hha_series, hha_set: @misc.hha_set, images: @misc.images, interact: @misc.interact, internal_id: @misc.internal_id, kit_cost: @misc.kit_cost, lighting_type: @misc.lighting_type, name: @misc.name, pattern: @misc.pattern, pattern_customize: @misc.pattern_customize, pattern_title: @misc.pattern_title, sell: @misc.sell, size: @misc.size, source: @misc.source, source_notes: @misc.source_notes, speaker_type: @misc.speaker_type, tag: @misc.tag, unieue_entry_id: @misc.unieue_entry_id, variant_id: @misc.variant_id, variation: @misc.variation, version: @misc.version } }
    end

    assert_redirected_to misc_url(Misc.last)
  end

  test "should show misc" do
    get misc_url(@misc)
    assert_response :success
  end

  test "should get edit" do
    get edit_misc_url(@misc)
    assert_response :success
  end

  test "should update misc" do
    patch misc_url(@misc), params: { misc: { body_customize: @misc.body_customize, body_title: @misc.body_title, buy: @misc.buy, catalog: @misc.catalog, color_1: @misc.color_1, color_2: @misc.color_2, diy: @misc.diy, filename: @misc.filename, hha_concept_1: @misc.hha_concept_1, hha_concept_2: @misc.hha_concept_2, hha_series: @misc.hha_series, hha_set: @misc.hha_set, images: @misc.images, interact: @misc.interact, internal_id: @misc.internal_id, kit_cost: @misc.kit_cost, lighting_type: @misc.lighting_type, name: @misc.name, pattern: @misc.pattern, pattern_customize: @misc.pattern_customize, pattern_title: @misc.pattern_title, sell: @misc.sell, size: @misc.size, source: @misc.source, source_notes: @misc.source_notes, speaker_type: @misc.speaker_type, tag: @misc.tag, unieue_entry_id: @misc.unieue_entry_id, variant_id: @misc.variant_id, variation: @misc.variation, version: @misc.version } }
    assert_redirected_to misc_url(@misc)
  end

  test "should destroy misc" do
    assert_difference('Misc.count', -1) do
      delete misc_url(@misc)
    end

    assert_redirected_to miscs_url
  end
end
