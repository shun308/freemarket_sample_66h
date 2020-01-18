class ChangeDataPhoneNumberToUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :phone_number, :bigint
    change_column :users, :address_phone_number, :bigint
  end
end
