class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text        :body
      t.string      :image
      t.string      :first_name, null: false
      t.string      :last_name, null: false
      t.string      :first_name_kana, null: false
      t.string      :last_name_kana, null: false
      t.integer     :birth_year, null: false
      t.integer     :birth_month, null: false
      t.integer     :birth_day, null: false
      t.integer     :phone_number, unique: true
      t.references  :user,null: false, foreign_key: true
      t.timestamps
    end
  end
end
