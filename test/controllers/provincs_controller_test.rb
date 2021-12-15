require "test_helper"

class ProvincsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provinc = provincs(:one)
  end

  test "should get index" do
    get provincs_url
    assert_response :success
  end

  test "should get new" do
    get new_provinc_url
    assert_response :success
  end

  test "should create provinc" do
    assert_difference('Provinc.count') do
      post provincs_url, params: { provinc: { hst: @provinc.hst, name: @provinc.name, pst: @provinc.pst } }
    end

    assert_redirected_to provinc_url(Provinc.last)
  end

  test "should show provinc" do
    get provinc_url(@provinc)
    assert_response :success
  end

  test "should get edit" do
    get edit_provinc_url(@provinc)
    assert_response :success
  end

  test "should update provinc" do
    patch provinc_url(@provinc), params: { provinc: { hst: @provinc.hst, name: @provinc.name, pst: @provinc.pst } }
    assert_redirected_to provinc_url(@provinc)
  end

  test "should destroy provinc" do
    assert_difference('Provinc.count', -1) do
      delete provinc_url(@provinc)
    end

    assert_redirected_to provincs_url
  end
end
