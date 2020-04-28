require 'test_helper'

class ToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tool = tools(:one)
  end

  test "should get index" do
    get tools_url
    assert_response :success
  end

  test "should get new" do
    get new_tool_url
    assert_response :success
  end

  test "should create tool" do
    assert_difference('Tool.count') do
      post tools_url, params: { tool: { body_title: @tool.body_title, buy: @tool.buy, color_1: @tool.color_1, color_2: @tool.color_2, customize: @tool.customize, diy_boolean: @tool.diy_boolean, filename: @tool.filename, image: @tool.image, internal_id: @tool.internal_id, kit_cost: @tool.kit_cost, name: @tool.name, sell: @tool.sell, set: @tool.set, size: @tool.size, source: @tool.source, source_notes: @tool.source_notes, ueses: @tool.ueses, unique_entry_id: @tool.unique_entry_id, variant_id: @tool.variant_id, variation: @tool.variation, version: @tool.version } }
    end

    assert_redirected_to tool_url(Tool.last)
  end

  test "should show tool" do
    get tool_url(@tool)
    assert_response :success
  end

  test "should get edit" do
    get edit_tool_url(@tool)
    assert_response :success
  end

  test "should update tool" do
    patch tool_url(@tool), params: { tool: { body_title: @tool.body_title, buy: @tool.buy, color_1: @tool.color_1, color_2: @tool.color_2, customize: @tool.customize, diy_boolean: @tool.diy_boolean, filename: @tool.filename, image: @tool.image, internal_id: @tool.internal_id, kit_cost: @tool.kit_cost, name: @tool.name, sell: @tool.sell, set: @tool.set, size: @tool.size, source: @tool.source, source_notes: @tool.source_notes, ueses: @tool.ueses, unique_entry_id: @tool.unique_entry_id, variant_id: @tool.variant_id, variation: @tool.variation, version: @tool.version } }
    assert_redirected_to tool_url(@tool)
  end

  test "should destroy tool" do
    assert_difference('Tool.count', -1) do
      delete tool_url(@tool)
    end

    assert_redirected_to tools_url
  end
end
