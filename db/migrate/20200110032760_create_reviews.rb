class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      # t.text :body
      # t.integer :rating
      # t.references :trading, foreign_key: true
      t.timestamps
    end
  end
end
