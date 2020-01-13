class Like < ApplicationRecord
  #ユーザーが重複してお気に入りを登録するのを防ぐ
  validates :user_id, :uniqueness => {:scope => :product_id}

  belongs_to :product
  belongs_to :user  
end
