class Comment < ApplicationRecord
  # validations
  validates :text, presence: true, lenth: { maximum: 255 }
  validates :user_id, presence: true
  validates :post_id, presence: true

  # relations
  belongs_to :user
  belongs_to :post
end
