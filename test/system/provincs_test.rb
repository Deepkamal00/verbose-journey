require "application_system_test_case"

class ProvincsTest < ApplicationSystemTestCase
  setup do
    @provinc = provincs(:one)
  end

  test "visiting the index" do
    visit provincs_url
    assert_selector "h1", text: "Provincs"
  end

  test "creating a Provinc" do
    visit provincs_url
    click_on "New Provinc"

    fill_in "Hst", with: @provinc.hst
    fill_in "Name", with: @provinc.name
    fill_in "Pst", with: @provinc.pst
    click_on "Create Provinc"

    assert_text "Provinc was successfully created"
    click_on "Back"
  end

  test "updating a Provinc" do
    visit provincs_url
    click_on "Edit", match: :first

    fill_in "Hst", with: @provinc.hst
    fill_in "Name", with: @provinc.name
    fill_in "Pst", with: @provinc.pst
    click_on "Update Provinc"

    assert_text "Provinc was successfully updated"
    click_on "Back"
  end

  test "destroying a Provinc" do
    visit provincs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provinc was successfully destroyed"
  end
end
