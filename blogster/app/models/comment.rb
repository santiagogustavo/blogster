# COMMENT MODEL
# Comment (:user, :content, :post_id)
class Comment < ApplicationRecord
  validates :user, :content, :post_id, presence: true

  belongs_to :post
end
