require "test_helper"

class WyboriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wybories_index_url
    assert_response :success
  end

  test "should get show" do
    get wybories_show_url
    assert_response :success
  end

  test "should get new" do
    get wybories_new_url
    assert_response :success
  end

  test "should get create" do
    get wybories_create_url
    assert_response :success
  end

  test "should get edit" do
    get wybories_edit_url
    assert_response :success
  end

  test "should get update" do
    get wybories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get wybories_destroy_url
    assert_response :success
  end
end
