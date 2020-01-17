class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # アソシエーション
  has_one :credit
  accepts_nested_attributes_for :credit
  has_many :sns_credentials
  has_many :exhibited_products, class_name: 'Product', foreign_key: :exhibitor_id
  has_many :purchased_products, class_name: 'Product', foreign_key: :purchaser_id
end