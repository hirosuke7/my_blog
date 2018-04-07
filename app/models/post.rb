class Post < ApplicationRecord
  belongs_to :user
  scope :find_newest_article, -> { order(created_at: :desc).limit(5) }
end
