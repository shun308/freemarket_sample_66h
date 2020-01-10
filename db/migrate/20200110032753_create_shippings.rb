class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.string :shipping_method,null: false
      t.string :region,null: false
      t.string :period_before_shipping,null: false
      t.integer :fee,null: false
      t.timestamps
    end
  end
end
