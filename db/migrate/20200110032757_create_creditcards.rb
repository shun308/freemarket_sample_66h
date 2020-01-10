class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.integer     :year, null: false
      t.integer     :month, null: false
      t.integer     :security_code, null: false
      t.integer     :card_code, null: false
      # t.references  :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
