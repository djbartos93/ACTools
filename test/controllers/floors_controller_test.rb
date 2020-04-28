require 'test_helper'

class FloorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @floor = floors(:one)
  end

  test "should get index" do
    get floors_url
    assert_response :success
  end

  test "should get new" do
    get new_floor_url
    assert_response :success
  end

  test "should create floor" do
    assert_difference('Floor.count') do
      post floors_url, params: { floor: { buy: @floor.buy, catalog: @floor.catalog, color_1: @floor.color_1, color_2: @floor.color_2, diy: @floor.diy, filename: @floor.filename, hha_concept_1: @floor.hha_concept_1, hha_concept_2: @floor.hha_concept_2, hha_series: @floor.hha_series, image: @floor.image, internal_id: @floor.internal_id, name: @floor.name, sell: @floor.sell, source: @floor.source, source_notes: @floor.source_notes, tag: @floor.tag, unieque_entry_id: @floor.unieque_entry_id, version: @floor.version, vfx: @floor.vfx } }
    end

    assert_redirected_to floor_url(Floor.last)
  end

  test "should show floor" do
    get floor_url(@floor)
    assert_response :success
  end

  test "should get edit" do
    get edit_floor_url(@floor)
    assert_response :success
  end

  test "should update floor" do
    patch floor_url(@floor), params: { floor: { buy: @floor.buy, catalog: @floor.catalog, color_1: @floor.color_1, color_2: @floor.color_2, diy: @floor.diy, filename: @floor.filename, hha_concept_1: @floor.hha_concept_1, hha_concept_2: @floor.hha_concept_2, hha_series: @floor.hha_series, image: @floor.image, internal_id: @floor.internal_id, name: @floor.name, sell: @floor.sell, source: @floor.source, source_notes: @floor.source_notes, tag: @floor.tag, unieque_entry_id: @floor.unieque_entry_id, version: @floor.version, vfx: @floor.vfx } }
    assert_redirected_to floor_url(@floor)
  end

  test "should destroy floor" do
    assert_difference('Floor.count', -1) do
      delete floor_url(@floor)
    end

    assert_redirected_to floors_url
  end
end
