require "test_helper"

class KandydatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kandydats_index_url
    assert_response :success
  end

  test "should get show" do
    get kandydats_show_url
    assert_response :success
  end

  test "should get new" do
    get kandydats_new_url
    assert_response :success
  end

  test "should get create" do
    get kandydats_create_url
    assert_response :success
  end

  test "should get edit" do
    get kandydats_edit_url
    assert_response :success
  end

  test "should get update" do
    get kandydats_update_url
    assert_response :success
  end

  test "should get destroy" do
    get kandydats_destroy_url
    assert_response :success
  end
end
