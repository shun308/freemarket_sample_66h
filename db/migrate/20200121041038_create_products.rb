class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :size, null: false, default: 0
      t.text :description, null: false
      t.string :brand
      t.integer :price, null: false, index: true
      t.integer :shipping_method, null: false, default: 0
      t.integer :region, null: false, default: 0
      t.integer :period_before_shipping, null: false, default: 0
      t.integer :fee, null: false, index: true, default: 0
      t.integer :sell_state, null: false, default: 1
      t.integer :condition, null: false, default: 0
      t.string :name, null: false, index: true
      t.integer :category_id, null: false, default: 0
      #t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :seller_id, null: false
      t.integer :buyer_id

      t.timestamps
    end
  end
end
