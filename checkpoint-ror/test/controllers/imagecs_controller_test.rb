require "test_helper"

class ImagecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imagec = imagecs(:one)
  end

  test "should get index" do
    get imagecs_url
    assert_response :success
  end

  test "should get new" do
    get new_imagec_url
    assert_response :success
  end

  test "should create imagec" do
    assert_difference("Imagec.count") do
      post imagecs_url, params: { imagec: { description: @imagec.description, name: @imagec.name } }
    end

    assert_redirected_to imagec_url(Imagec.last)
  end

  test "should show imagec" do
    get imagec_url(@imagec)
    assert_response :success
  end

  test "should get edit" do
    get edit_imagec_url(@imagec)
    assert_response :success
  end

  test "should update imagec" do
    patch imagec_url(@imagec), params: { imagec: { description: @imagec.description, name: @imagec.name } }
    assert_redirected_to imagec_url(@imagec)
  end

  test "should destroy imagec" do
    assert_difference("Imagec.count", -1) do
      delete imagec_url(@imagec)
    end

    assert_redirected_to imagecs_url
  end
end
