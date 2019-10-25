class Comment < ApplicationRecord
  # validations
  validate :text, presence: true, lenth: { maximum: 255 }
  validate :user_id, presence: true
  validate :post_id, presence: true

  # relations
  belongs_to :user
  belongs_to :post
end
