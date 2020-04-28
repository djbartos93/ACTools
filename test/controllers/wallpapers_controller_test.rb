require 'test_helper'

class WallpapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallpaper = wallpapers(:one)
  end

  test "should get index" do
    get wallpapers_url
    assert_response :success
  end

  test "should get new" do
    get new_wallpaper_url
    assert_response :success
  end

  test "should create wallpaper" do
    assert_difference('Wallpaper.count') do
      post wallpapers_url, params: { wallpaper: { buy: @wallpaper.buy, catalog: @wallpaper.catalog, celing_type: @wallpaper.celing_type, color_1: @wallpaper.color_1, color_2: @wallpaper.color_2, curtain: @wallpaper.curtain, curtain_color: @wallpaper.curtain_color, diy: @wallpaper.diy, filename: @wallpaper.filename, hha_concept_1: @wallpaper.hha_concept_1, hha_concept_2: @wallpaper.hha_concept_2, image: @wallpaper.image, internal_id: @wallpaper.internal_id, name: @wallpaper.name, pane_type: @wallpaper.pane_type, sell: @wallpaper.sell, source: @wallpaper.source, source_notes: @wallpaper.source_notes, tag: @wallpaper.tag, unique_entry_id: @wallpaper.unique_entry_id, version: @wallpaper.version, vfx: @wallpaper.vfx, vfx_type: @wallpaper.vfx_type, window_color: @wallpaper.window_color, window_type: @wallpaper.window_type } }
    end

    assert_redirected_to wallpaper_url(Wallpaper.last)
  end

  test "should show wallpaper" do
    get wallpaper_url(@wallpaper)
    assert_response :success
  end

  test "should get edit" do
    get edit_wallpaper_url(@wallpaper)
    assert_response :success
  end

  test "should update wallpaper" do
    patch wallpaper_url(@wallpaper), params: { wallpaper: { buy: @wallpaper.buy, catalog: @wallpaper.catalog, celing_type: @wallpaper.celing_type, color_1: @wallpaper.color_1, color_2: @wallpaper.color_2, curtain: @wallpaper.curtain, curtain_color: @wallpaper.curtain_color, diy: @wallpaper.diy, filename: @wallpaper.filename, hha_concept_1: @wallpaper.hha_concept_1, hha_concept_2: @wallpaper.hha_concept_2, image: @wallpaper.image, internal_id: @wallpaper.internal_id, name: @wallpaper.name, pane_type: @wallpaper.pane_type, sell: @wallpaper.sell, source: @wallpaper.source, source_notes: @wallpaper.source_notes, tag: @wallpaper.tag, unique_entry_id: @wallpaper.unique_entry_id, version: @wallpaper.version, vfx: @wallpaper.vfx, vfx_type: @wallpaper.vfx_type, window_color: @wallpaper.window_color, window_type: @wallpaper.window_type } }
    assert_redirected_to wallpaper_url(@wallpaper)
  end

  test "should destroy wallpaper" do
    assert_difference('Wallpaper.count', -1) do
      delete wallpaper_url(@wallpaper)
    end

    assert_redirected_to wallpapers_url
  end
end
