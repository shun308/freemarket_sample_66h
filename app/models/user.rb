class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :likes
  has_many :snss
  has_many :tradings
  has_one :creditcard
  has_one :profile
  accepts_nested_attributes_for :profile
  validates :nickname, presence: true, length: { maximum: 6 }
end
