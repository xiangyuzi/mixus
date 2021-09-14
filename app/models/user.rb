class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :Prefecture
  has_many :ideas
  has_many :creations

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'is invaild. Include both letters and numbers'

  with_options presence: true, format: { with: /\A(?=.*?[a-zぁ-んァ-ヶ一-龥々ー])[a-zぁ-んァ-ヶ一-龥々ー]+\z/i, message: 'is invaild. Input correct chalacter' } do
    validates :last_name
    validates :first_name
  end

  with_options presence: true do
    validates :birth_date
    validates :prefecture_id
  end
    
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank"}
end
