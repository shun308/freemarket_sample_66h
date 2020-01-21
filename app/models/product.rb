class Product < ApplicationRecord
  has_many :images, dependent: :delete_all
  #has_many :comments
  belongs_to :category
  belongs_to :user
  #has_one :order
  #has_many :likes
end