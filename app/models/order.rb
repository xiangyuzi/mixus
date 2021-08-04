class Order < ApplicationRecord
  belongs_to :user
  belongs_to :idea
  has_one :creation
end
