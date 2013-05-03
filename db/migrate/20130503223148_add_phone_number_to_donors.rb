class AddPhoneNumberToDonors < ActiveRecord::Migration
  def change
    add_column :donors, :phone_number, :string
  end
end
