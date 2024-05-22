require "test_helper"

class PartiasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get partias_index_url
    assert_response :success
  end

  test "should get show" do
    get partias_show_url
    assert_response :success
  end

  test "should get new" do
    get partias_new_url
    assert_response :success
  end

  test "should get create" do
    get partias_create_url
    assert_response :success
  end

  test "should get edit" do
    get partias_edit_url
    assert_response :success
  end

  test "should get update" do
    get partias_update_url
    assert_response :success
  end

  test "should get destroy" do
    get partias_destroy_url
    assert_response :success
  end
end
