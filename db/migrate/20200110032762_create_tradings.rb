class CreateTradings < ActiveRecord::Migration[5.2]
  def change
    create_table :tradings do |t|
      # t.references      :seller, null: false, foreign_key: true
      # t.references      :buyer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
