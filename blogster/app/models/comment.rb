# COMMENT MODEL
# Comment (:content, :post_id, :user_id)
class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :post
  belongs_to :user

  self.per_page = 5
end
