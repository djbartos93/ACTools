require 'test_helper'

class RugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rug = rugs(:one)
  end

  test "should get index" do
    get rugs_url
    assert_response :success
  end

  test "should get new" do
    get new_rug_url
    assert_response :success
  end

  test "should create rug" do
    assert_difference('Rug.count') do
      post rugs_url, params: { rug: { buy: @rug.buy, catalog: @rug.catalog, color_1: @rug.color_1, color_2: @rug.color_2, diy: @rug.diy, filename: @rug.filename, hha_concept_1: @rug.hha_concept_1, hha_concept_2: @rug.hha_concept_2, hha_series: @rug.hha_series, image: @rug.image, internal_id: @rug.internal_id, name: @rug.name, sell: @rug.sell, size: @rug.size, source: @rug.source, source_notes: @rug.source_notes, tag: @rug.tag, unieque_entry_id: @rug.unieque_entry_id, version: @rug.version } }
    end

    assert_redirected_to rug_url(Rug.last)
  end

  test "should show rug" do
    get rug_url(@rug)
    assert_response :success
  end

  test "should get edit" do
    get edit_rug_url(@rug)
    assert_response :success
  end

  test "should update rug" do
    patch rug_url(@rug), params: { rug: { buy: @rug.buy, catalog: @rug.catalog, color_1: @rug.color_1, color_2: @rug.color_2, diy: @rug.diy, filename: @rug.filename, hha_concept_1: @rug.hha_concept_1, hha_concept_2: @rug.hha_concept_2, hha_series: @rug.hha_series, image: @rug.image, internal_id: @rug.internal_id, name: @rug.name, sell: @rug.sell, size: @rug.size, source: @rug.source, source_notes: @rug.source_notes, tag: @rug.tag, unieque_entry_id: @rug.unieque_entry_id, version: @rug.version } }
    assert_redirected_to rug_url(@rug)
  end

  test "should destroy rug" do
    assert_difference('Rug.count', -1) do
      delete rug_url(@rug)
    end

    assert_redirected_to rugs_url
  end
end
