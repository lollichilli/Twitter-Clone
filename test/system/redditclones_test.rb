require "application_system_test_case"

class RedditclonesTest < ApplicationSystemTestCase
  setup do
    @redditclone = redditclones(:one)
  end

  test "visiting the index" do
    visit redditclones_url
    assert_selector "h1", text: "Redditclones"
  end

  test "should create redditclone" do
    visit redditclones_url
    click_on "New redditclone"

    fill_in "Email", with: @redditclone.email
    fill_in "First name", with: @redditclone.first_name
    fill_in "Last name", with: @redditclone.last_name
    fill_in "Phone", with: @redditclone.phone
    fill_in "Twitter", with: @redditclone.twitter
    click_on "Create Redditclone"

    assert_text "Redditclone was successfully created"
    click_on "Back"
  end

  test "should update Redditclone" do
    visit redditclone_url(@redditclone)
    click_on "Edit this redditclone", match: :first

    fill_in "Email", with: @redditclone.email
    fill_in "First name", with: @redditclone.first_name
    fill_in "Last name", with: @redditclone.last_name
    fill_in "Phone", with: @redditclone.phone
    fill_in "Twitter", with: @redditclone.twitter
    click_on "Update Redditclone"

    assert_text "Redditclone was successfully updated"
    click_on "Back"
  end

  test "should destroy Redditclone" do
    visit redditclone_url(@redditclone)
    click_on "Destroy this redditclone", match: :first

    assert_text "Redditclone was successfully destroyed"
  end
end
