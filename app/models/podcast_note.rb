class PodcastNote < ApplicationRecord
  has_rich_text :note_body
  
  paginates_per 25
end
