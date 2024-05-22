require "test_helper"

class WyborcaWyboriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wyborca_wybories_index_url
    assert_response :success
  end

  test "should get show" do
    get wyborca_wybories_show_url
    assert_response :success
  end

  test "should get new" do
    get wyborca_wybories_new_url
    assert_response :success
  end

  test "should get create" do
    get wyborca_wybories_create_url
    assert_response :success
  end

  test "should get edit" do
    get wyborca_wybories_edit_url
    assert_response :success
  end

  test "should get update" do
    get wyborca_wybories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get wyborca_wybories_destroy_url
    assert_response :success
  end
end
