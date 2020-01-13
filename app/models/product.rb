class Product < ApplicationRecord
  # アソシエーション
  has_many :images, dependent: :delete_all
  has_many :comments
  belongs_to :shipping, dependent: :delete
  belongs_to :size
  belongs_to :condition
  belongs_to :state
  belongs_to :category
  belongs_to :user
  belongs_to :brand
  has_one :order
  has_many :likes
  # validates :name, presence: true, length: { in: 1..75 }
  # validates :description, presence: true, length: { in: 1..1000 }
  # validates :category, presence: true
  # validates :size, presence: true
  # validates :state, presence: true
  # validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
end
