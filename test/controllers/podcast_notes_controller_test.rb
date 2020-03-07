require 'test_helper'

class PodcastNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @podcast_note = podcast_notes(:one)
  end

  test "should get index" do
    get podcast_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_podcast_note_url
    assert_response :success
  end

  test "should create podcast_note" do
    assert_difference('PodcastNote.count') do
      post podcast_notes_url, params: { podcast_note: { title: @podcast_note.title } }
    end

    assert_redirected_to podcast_note_url(PodcastNote.last)
  end

  test "should show podcast_note" do
    get podcast_note_url(@podcast_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_podcast_note_url(@podcast_note)
    assert_response :success
  end

  test "should update podcast_note" do
    patch podcast_note_url(@podcast_note), params: { podcast_note: { title: @podcast_note.title } }
    assert_redirected_to podcast_note_url(@podcast_note)
  end

  test "should destroy podcast_note" do
    assert_difference('PodcastNote.count', -1) do
      delete podcast_note_url(@podcast_note)
    end

    assert_redirected_to podcast_notes_url
  end
end
