class PodcastNote < ApplicationRecord
  has_rich_text :note_body
end
