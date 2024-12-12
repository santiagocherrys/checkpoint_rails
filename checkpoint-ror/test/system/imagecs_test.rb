require "application_system_test_case"

class ImagecsTest < ApplicationSystemTestCase
  setup do
    @imagec = imagecs(:one)
  end

  test "visiting the index" do
    visit imagecs_url
    assert_selector "h1", text: "Imagecs"
  end

  test "should create imagec" do
    visit imagecs_url
    click_on "New imagec"

    fill_in "Description", with: @imagec.description
    fill_in "Name", with: @imagec.name
    click_on "Create Imagec"

    assert_text "Imagec was successfully created"
    click_on "Back"
  end

  test "should update Imagec" do
    visit imagec_url(@imagec)
    click_on "Edit this imagec", match: :first

    fill_in "Description", with: @imagec.description
    fill_in "Name", with: @imagec.name
    click_on "Update Imagec"

    assert_text "Imagec was successfully updated"
    click_on "Back"
  end

  test "should destroy Imagec" do
    visit imagec_url(@imagec)
    click_on "Destroy this imagec", match: :first

    assert_text "Imagec was successfully destroyed"
  end
end
