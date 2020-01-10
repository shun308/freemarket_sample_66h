class CreateBrandGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_groups do |t|
      # t.refecerences :brand, foreign_key: true
      # t.string :name
      t.timestamps
    end
  end
end
