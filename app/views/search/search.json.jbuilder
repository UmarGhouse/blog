json.posts do
  json.array!(@posts) do |post|
    json.title post.title
    json.url post_path(post)
  end
end

json.podcast_notes do
  json.array!(@podcast_notes) do |note|
    json.title note.title
    json.url podcast_note_path(note)
  end
end