class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.integer :sell_state,null: false
      t.timestamps
    end
  end
end
