class Post < ApplicationRecord
  # validations
  validate :title, presence: true, length: { maximum: 128 }
  validate :description, length: { maximum: 255 }
  validate :user_id, presence: true
  validates_associated :comments

  # relations
  belongs_to :user
  has_many :comments
end
