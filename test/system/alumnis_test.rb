require "application_system_test_case"

class AlumnisTest < ApplicationSystemTestCase
  setup do
    @alumni = alumnis(:one)
  end

  test "visiting the index" do
    visit alumnis_url
    assert_selector "h1", text: "Alumnis"
  end

  test "should create alumni" do
    visit alumnis_url
    click_on "New alumni"

    fill_in "Email", with: @alumni.email
    fill_in "First name", with: @alumni.first_name
    fill_in "Last name", with: @alumni.last_name
    click_on "Create Alumni"

    assert_text "Alumni was successfully created"
    click_on "Back"
  end

  test "should update Alumni" do
    visit alumni_url(@alumni)
    click_on "Edit this alumni", match: :first

    fill_in "Email", with: @alumni.email
    fill_in "First name", with: @alumni.first_name
    fill_in "Last name", with: @alumni.last_name
    click_on "Update Alumni"

    assert_text "Alumni was successfully updated"
    click_on "Back"
  end

  test "should destroy Alumni" do
    visit alumni_url(@alumni)
    accept_confirm { click_on "Destroy this alumni", match: :first }

    assert_text "Alumni was successfully destroyed"
  end
end
