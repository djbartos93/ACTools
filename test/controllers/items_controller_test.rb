require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { album_image: @item.album_image, body_customize: @item.body_customize, body_title: @item.body_title, buy: @item.buy, catalog: @item.catalog, category: @item.category, ceiling_type: @item.ceiling_type, closet_image: @item.closet_image, color_1: @item.color_1, color_2: @item.color_2, curtain_color: @item.curtain_color, curtain_type: @item.curtain_type, diy: @item.diy, door_deco: @item.door_deco, filename: @item.filename, framed_image: @item.framed_image, genuine: @item.genuine, hha_concept_1: @item.hha_concept_1, hha_concept_2: @item.hha_concept_2, hha_series: @item.hha_series, hha_set: @item.hha_set, high-res_texture: @item.high-res_texture, image: @item.image, interact: @item.interact, internal_id: @item.internal_id, kit_cost: @item.kit_cost, label_themes: @item.label_themes, lighting_type: @item.lighting_type, name: @item.name, pane_type: @item.pane_type, patern_title: @item.patern_title, pattern: @item.pattern, pattern_customize: @item.pattern_customize, primary_shape: @item.primary_shape, secondary_shape: @item.secondary_shape, sell: @item.sell, set: @item.set, size: @item.size, source: @item.source, source_notes: @item.source_notes, speaker_type: @item.speaker_type, storage_image: @item.storage_image, tag: @item.tag, uses: @item.uses, variant_id: @item.variant_id, variation: @item.variation, version: @item.version, vfx: @item.vfx, vfx_type: @item.vfx_type, window_color: @item.window_color, window_type: @item.window_type } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { album_image: @item.album_image, body_customize: @item.body_customize, body_title: @item.body_title, buy: @item.buy, catalog: @item.catalog, category: @item.category, ceiling_type: @item.ceiling_type, closet_image: @item.closet_image, color_1: @item.color_1, color_2: @item.color_2, curtain_color: @item.curtain_color, curtain_type: @item.curtain_type, diy: @item.diy, door_deco: @item.door_deco, filename: @item.filename, framed_image: @item.framed_image, genuine: @item.genuine, hha_concept_1: @item.hha_concept_1, hha_concept_2: @item.hha_concept_2, hha_series: @item.hha_series, hha_set: @item.hha_set, high-res_texture: @item.high-res_texture, image: @item.image, interact: @item.interact, internal_id: @item.internal_id, kit_cost: @item.kit_cost, label_themes: @item.label_themes, lighting_type: @item.lighting_type, name: @item.name, pane_type: @item.pane_type, patern_title: @item.patern_title, pattern: @item.pattern, pattern_customize: @item.pattern_customize, primary_shape: @item.primary_shape, secondary_shape: @item.secondary_shape, sell: @item.sell, set: @item.set, size: @item.size, source: @item.source, source_notes: @item.source_notes, speaker_type: @item.speaker_type, storage_image: @item.storage_image, tag: @item.tag, uses: @item.uses, variant_id: @item.variant_id, variation: @item.variation, version: @item.version, vfx: @item.vfx, vfx_type: @item.vfx_type, window_color: @item.window_color, window_type: @item.window_type } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
