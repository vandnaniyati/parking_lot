require "application_system_test_case"

class ParkingsTest < ApplicationSystemTestCase
  setup do
    @parking = parkings(:one)
  end

  test "visiting the index" do
    visit parkings_url
    assert_selector "h1", text: "Parkings"
  end

  test "should create parking" do
    visit parkings_url
    click_on "New parking"

    fill_in "Location", with: @parking.location
    fill_in "Name", with: @parking.name
    fill_in "Number", with: @parking.number
    click_on "Create Parking"

    assert_text "Parking was successfully created"
    click_on "Back"
  end

  test "should update Parking" do
    visit parking_url(@parking)
    click_on "Edit this parking", match: :first

    fill_in "Location", with: @parking.location
    fill_in "Name", with: @parking.name
    fill_in "Number", with: @parking.number
    click_on "Update Parking"

    assert_text "Parking was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking" do
    visit parking_url(@parking)
    click_on "Destroy this parking", match: :first

    assert_text "Parking was successfully destroyed"
  end
end
