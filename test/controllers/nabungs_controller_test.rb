require "test_helper"

class NabungsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nabung = nabungs(:one)
  end

  test "should get index" do
    get nabungs_url
    assert_response :success
  end

  test "should get new" do
    get new_nabung_url
    assert_response :success
  end

  test "should create nabung" do
    assert_difference('Nabung.count') do
      post nabungs_url, params: { nabung: { tujuan_nabung: @nabung.tujuan_nabung } }
    end

    assert_redirected_to nabung_url(Nabung.last)
  end

  test "should show nabung" do
    get nabung_url(@nabung)
    assert_response :success
  end

  test "should get edit" do
    get edit_nabung_url(@nabung)
    assert_response :success
  end

  test "should update nabung" do
    patch nabung_url(@nabung), params: { nabung: { tujuan_nabung: @nabung.tujuan_nabung } }
    assert_redirected_to nabung_url(@nabung)
  end

  test "should destroy nabung" do
    assert_difference('Nabung.count', -1) do
      delete nabung_url(@nabung)
    end

    assert_redirected_to nabungs_url
  end
end
