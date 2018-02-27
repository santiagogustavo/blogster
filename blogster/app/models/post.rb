# POST MODEL
# Post (:title, :content, :category_id)
class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :content, :category_id, presence: true

  belongs_to :category

  has_many :line_items, inverse_of: :order
  has_many :comments
end
