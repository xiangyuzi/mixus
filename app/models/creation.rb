class Creation < ApplicationRecord
  belongs_to :user
  belongs_to :idea
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :day
    validates :comment
  end
end
