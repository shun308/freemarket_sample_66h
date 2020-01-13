class Shipping < ApplicationRecord
  has_one :product
  validates :fee, presence: true
  validates :region, presence: true
  validates :period_before_shipping: true
end
