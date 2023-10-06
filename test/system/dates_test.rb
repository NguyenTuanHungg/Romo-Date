require "application_system_test_case"

class DatesTest < ApplicationSystemTestCase
  setup do
    @date = dates(:one)
  end

  test "visiting the index" do
    visit dates_url
    assert_selector "h1", text: "Dates"
  end

  test "should create date" do
    visit dates_url
    click_on "New date"

    fill_in "Date", with: @date.date
    click_on "Create Date"

    assert_text "Date was successfully created"
    click_on "Back"
  end

  test "should update Date" do
    visit date_url(@date)
    click_on "Edit this date", match: :first

    fill_in "Date", with: @date.date
    click_on "Update Date"

    assert_text "Date was successfully updated"
    click_on "Back"
  end

  test "should destroy Date" do
    visit date_url(@date)
    click_on "Destroy this date", match: :first

    assert_text "Date was successfully destroyed"
  end
end
