class Image < ApplicationRecord
  # アソシエーション
  belongs_to :product ,optional: true

  #バリデーション
  validates :image, presence: true
  
  # 画像アップローダー
  mount_uploader :image, ImageUploader
end
