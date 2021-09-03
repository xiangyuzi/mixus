class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :birth_date, presence: true
  validates :prefecture_id, presence: true
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank"}

  belongs_to :Prefecture
  has_many :ideas
  has_many :creations
end
