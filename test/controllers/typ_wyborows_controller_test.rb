require "test_helper"

class TypWyborowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get typ_wyborows_index_url
    assert_response :success
  end

  test "should get show" do
    get typ_wyborows_show_url
    assert_response :success
  end

  test "should get new" do
    get typ_wyborows_new_url
    assert_response :success
  end

  test "should get create" do
    get typ_wyborows_create_url
    assert_response :success
  end

  test "should get edit" do
    get typ_wyborows_edit_url
    assert_response :success
  end

  test "should get update" do
    get typ_wyborows_update_url
    assert_response :success
  end

  test "should get destroy" do
    get typ_wyborows_destroy_url
    assert_response :success
  end
end
