class PodcastNote < ApplicationRecord
  has_rich_text :note_body
  has_one :action_text_rich_text, class_name: 'ActionText::RichText', as: :record
  
  paginates_per 25
end
