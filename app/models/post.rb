class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :post_content, presence: true
  validates :user_id, presence: true
end
