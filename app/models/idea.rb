class Idea < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_one :order
  has_one :creation, dependent: :destroy

  with_options presence: true do
    validates :catchphrase
    validates :detail
    validates :category_id
  end
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
end
