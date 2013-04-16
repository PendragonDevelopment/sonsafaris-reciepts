class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.date :donation_date
      t.integer :amount
      t.string :details
      t.integer :donor_id

      t.timestamps
    end
  end
end
