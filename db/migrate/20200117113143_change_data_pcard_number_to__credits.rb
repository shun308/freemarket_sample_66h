class ChangeDataPcardNumberToCredits < ActiveRecord::Migration[5.2]
  def up
    change_column :credits, :card_number, :bigint
  end
end
