require 'test_helper'

class PostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poster = posters(:one)
  end

  test "should get index" do
    get posters_url
    assert_response :success
  end

  test "should get new" do
    get new_poster_url
    assert_response :success
  end

  test "should create poster" do
    assert_difference('Poster.count') do
      post posters_url, params: { poster: { buy: @poster.buy, catalog: @poster.catalog, color_1: @poster.color_1, color_2: @poster.color_2, filename: @poster.filename, image: @poster.image, internal_id: @poster.internal_id, name: @poster.name, sell: @poster.sell, size: @poster.size, source: @poster.source, source_notes: @poster.source_notes, unique_entry_id: @poster.unique_entry_id, version: @poster.version } }
    end

    assert_redirected_to poster_url(Poster.last)
  end

  test "should show poster" do
    get poster_url(@poster)
    assert_response :success
  end

  test "should get edit" do
    get edit_poster_url(@poster)
    assert_response :success
  end

  test "should update poster" do
    patch poster_url(@poster), params: { poster: { buy: @poster.buy, catalog: @poster.catalog, color_1: @poster.color_1, color_2: @poster.color_2, filename: @poster.filename, image: @poster.image, internal_id: @poster.internal_id, name: @poster.name, sell: @poster.sell, size: @poster.size, source: @poster.source, source_notes: @poster.source_notes, unique_entry_id: @poster.unique_entry_id, version: @poster.version } }
    assert_redirected_to poster_url(@poster)
  end

  test "should destroy poster" do
    assert_difference('Poster.count', -1) do
      delete poster_url(@poster)
    end

    assert_redirected_to posters_url
  end
end
