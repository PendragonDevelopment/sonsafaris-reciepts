class AddEmailToDonor < ActiveRecord::Migration
  def change
    add_column :donors, :email, :string
  end
end
