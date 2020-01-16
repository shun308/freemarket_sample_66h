class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string    :zipcode, null: false
      t.integer   :prefecture, null: false
      t.string    :city, null: false
      t.string    :district, null: false
      t.string    :building, null: false
      t.references :user, null: false, foreign_key: true

      t.string    :first_name
      t.string    :last_name
      t.string    :first_name_kana
      t.string    :last_name_kana
      t.string    :phone_number

      t.timestamps
    end
  end
end
