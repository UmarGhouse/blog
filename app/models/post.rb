class Post < ApplicationRecord
    has_rich_text :body
    has_one :action_text_rich_text, class_name: 'ActionText::RichText', as: :record

    has_one_attached :hero_image

    paginates_per 25

    scope :all_except_last, -> { where.not(id: Post.last.id) }
    # scope :all_by_year, -> { group_by_year(:created_at) }
end
