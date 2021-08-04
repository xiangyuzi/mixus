class Creation < ApplicationRecord
  belongs_to :order
  belongs_to :idea
  has_one_attached :creation_image
end
