class Comment < ApplicationRecord
  belongs_to :post
  validates :user, :content, :post_id, presence: true
end
