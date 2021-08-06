class Idea < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_one :order
  has_one :creation

  validates :catchphrase, presence: true
  validates :detail, presence: true
  validates :category_id, presence: true

  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
end
