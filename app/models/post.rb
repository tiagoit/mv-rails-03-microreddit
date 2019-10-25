class Post < ApplicationRecord
  # validations
  validates :title, presence: true, length: { maximum: 128 }
  validates :description, length: { maximum: 255 }
  validates :user_id, presence: true
  validates_associated :comments

  # relations
  belongs_to :user
  has_many :comments
end
