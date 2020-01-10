class CreateSns < ActiveRecord::Migration[5.2]
  def change
    create_table :sns do |t|
      t.text        :token, null: false
      t.string      :uid, null: false, unique: true
      t.string      :provider, unll: false
      # t.references  :user, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
