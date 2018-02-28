# COMMENT MODEL
# Comment (:content, :post_id, :user_id)
class Comment < ApplicationRecord
  validates :content, :post_id, :user_id, presence: true

  belongs_to :post
  belongs_to :user
end
