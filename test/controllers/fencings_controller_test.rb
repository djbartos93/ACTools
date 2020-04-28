require 'test_helper'

class FencingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fencing = fencings(:one)
  end

  test "should get index" do
    get fencings_url
    assert_response :success
  end

  test "should get new" do
    get new_fencing_url
    assert_response :success
  end

  test "should create fencing" do
    assert_difference('Fencing.count') do
      post fencings_url, params: { fencing: { buy: @fencing.buy, diy: @fencing.diy, filename: @fencing.filename, image: @fencing.image, internal_id: @fencing.internal_id, name: @fencing.name, sell: @fencing.sell, source: @fencing.source, source_notes: @fencing.source_notes, unique_entry_id: @fencing.unique_entry_id, version: @fencing.version } }
    end

    assert_redirected_to fencing_url(Fencing.last)
  end

  test "should show fencing" do
    get fencing_url(@fencing)
    assert_response :success
  end

  test "should get edit" do
    get edit_fencing_url(@fencing)
    assert_response :success
  end

  test "should update fencing" do
    patch fencing_url(@fencing), params: { fencing: { buy: @fencing.buy, diy: @fencing.diy, filename: @fencing.filename, image: @fencing.image, internal_id: @fencing.internal_id, name: @fencing.name, sell: @fencing.sell, source: @fencing.source, source_notes: @fencing.source_notes, unique_entry_id: @fencing.unique_entry_id, version: @fencing.version } }
    assert_redirected_to fencing_url(@fencing)
  end

  test "should destroy fencing" do
    assert_difference('Fencing.count', -1) do
      delete fencing_url(@fencing)
    end

    assert_redirected_to fencings_url
  end
end
