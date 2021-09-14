class Order < ApplicationRecord
  belongs_to user
  belongs_to idea

  with_options presence: true do
    validates :deadline_id
  end
  validates :deadline_id, numericality: { other_than: 1, message: "can't be blank" }
end
