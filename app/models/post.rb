class Post < ApplicationRecord
  validates :title, presence: true
  validates :post_content, presence: true
  validates :author_id, presence: true
end
