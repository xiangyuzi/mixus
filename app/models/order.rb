class Order < ApplicationRecord
  belongs_to user
  belongs_to idea

  validates :deadline_id, presence: true
end
