# POST MODEL
# Post (:title, :content, :category_id)
class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :content, presence: true

  belongs_to :category
  belongs_to :user

  has_many :line_items, inverse_of: :order
  has_many :comments, dependent: :destroy

  mount_uploader :image, ImageUploader

  self.per_page = 5

  def should_generate_new_friendly_id?
    title_changed?
  end
end
