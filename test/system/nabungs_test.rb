require "application_system_test_case"

class NabungsTest < ApplicationSystemTestCase
  setup do
    @nabung = nabungs(:one)
  end

  test "visiting the index" do
    visit nabungs_url
    assert_selector "h1", text: "Nabungs"
  end

  test "creating a Nabung" do
    visit nabungs_url
    click_on "New Nabung"

    fill_in "Tujuan nabung", with: @nabung.tujuan_nabung
    click_on "Create Nabung"

    assert_text "Nabung was successfully created"
    click_on "Back"
  end

  test "updating a Nabung" do
    visit nabungs_url
    click_on "Edit", match: :first

    fill_in "Tujuan nabung", with: @nabung.tujuan_nabung
    click_on "Update Nabung"

    assert_text "Nabung was successfully updated"
    click_on "Back"
  end

  test "destroying a Nabung" do
    visit nabungs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nabung was successfully destroyed"
  end
end
