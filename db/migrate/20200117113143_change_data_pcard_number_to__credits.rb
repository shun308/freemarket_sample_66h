class ChangeDataPcardNumberToCredits < ActiveRecord::Migration[5.2]
  def change
    change_column :credits, :card_number, :bigint
  end
end
