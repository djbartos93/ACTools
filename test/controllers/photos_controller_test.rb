require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo = photos(:one)
  end

  test "should get index" do
    get photos_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_url
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post photos_url, params: { photo: { body_title: @photo.body_title, buy: @photo.buy, catalog: @photo.catalog, color_1: @photo.color_1, color_2: @photo.color_2, customize: @photo.customize, diy: @photo.diy, filename: @photo.filename, image: @photo.image, internal_id: @photo.internal_id, kit_cost: @photo.kit_cost, name: @photo.name, pattern: @photo.pattern, pattern_title: @photo.pattern_title, sell: @photo.sell, size: @photo.size, source: @photo.source, unique_entry_id: @photo.unique_entry_id, variant_id: @photo.variant_id, variation: @photo.variation, version: @photo.version } }
    end

    assert_redirected_to photo_url(Photo.last)
  end

  test "should show photo" do
    get photo_url(@photo)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_url(@photo)
    assert_response :success
  end

  test "should update photo" do
    patch photo_url(@photo), params: { photo: { body_title: @photo.body_title, buy: @photo.buy, catalog: @photo.catalog, color_1: @photo.color_1, color_2: @photo.color_2, customize: @photo.customize, diy: @photo.diy, filename: @photo.filename, image: @photo.image, internal_id: @photo.internal_id, kit_cost: @photo.kit_cost, name: @photo.name, pattern: @photo.pattern, pattern_title: @photo.pattern_title, sell: @photo.sell, size: @photo.size, source: @photo.source, unique_entry_id: @photo.unique_entry_id, variant_id: @photo.variant_id, variation: @photo.variation, version: @photo.version } }
    assert_redirected_to photo_url(@photo)
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete photo_url(@photo)
    end

    assert_redirected_to photos_url
  end
end
