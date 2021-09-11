class Creation < ApplicationRecord
  belongs_to :user
  belongs_to :idea
  has_one_attached :image

  validates :comment, presence: true
end
