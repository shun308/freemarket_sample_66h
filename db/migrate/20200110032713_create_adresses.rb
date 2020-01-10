class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.integer   :zipcode, null: false
      t.integer   :prefecture, null: false
      t.string    :city, null: false
      t.string    :district, null: false
      t.string    :building, null: false
      # t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
