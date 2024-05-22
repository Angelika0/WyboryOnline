require "test_helper"

class WyborcasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wyborcas_index_url
    assert_response :success
  end

  test "should get show" do
    get wyborcas_show_url
    assert_response :success
  end

  test "should get new" do
    get wyborcas_new_url
    assert_response :success
  end

  test "should get create" do
    get wyborcas_create_url
    assert_response :success
  end

  test "should get edit" do
    get wyborcas_edit_url
    assert_response :success
  end

  test "should get update" do
    get wyborcas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get wyborcas_destroy_url
    assert_response :success
  end
end
