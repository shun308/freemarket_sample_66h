class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :size, null: false,foreign_key: true
      t.text :description, null: false
      t.references :brand, foreign_key: true
      t.integer :price, null: false, index: true
      t.references :shipping, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true
      t.references :condition, null: false, foreign_key: true
      t.string :name, null: false, index: true
      t.references :image, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
