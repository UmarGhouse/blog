require "application_system_test_case"

class PodcastNotesTest < ApplicationSystemTestCase
  setup do
    @podcast_note = podcast_notes(:one)
  end

  test "visiting the index" do
    visit podcast_notes_url
    assert_selector "h1", text: "Podcast Notes"
  end

  test "creating a Podcast note" do
    visit podcast_notes_url
    click_on "New Podcast Note"

    fill_in "Title", with: @podcast_note.title
    click_on "Create Podcast note"

    assert_text "Podcast note was successfully created"
    click_on "Back"
  end

  test "updating a Podcast note" do
    visit podcast_notes_url
    click_on "Edit", match: :first

    fill_in "Title", with: @podcast_note.title
    click_on "Update Podcast note"

    assert_text "Podcast note was successfully updated"
    click_on "Back"
  end

  test "destroying a Podcast note" do
    visit podcast_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Podcast note was successfully destroyed"
  end
end
