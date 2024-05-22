require "test_helper"

class KandydatWyboriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kandydat_wybories_index_url
    assert_response :success
  end

  test "should get show" do
    get kandydat_wybories_show_url
    assert_response :success
  end

  test "should get new" do
    get kandydat_wybories_new_url
    assert_response :success
  end

  test "should get create" do
    get kandydat_wybories_create_url
    assert_response :success
  end

  test "should get edit" do
    get kandydat_wybories_edit_url
    assert_response :success
  end

  test "should get update" do
    get kandydat_wybories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get kandydat_wybories_destroy_url
    assert_response :success
  end
end
