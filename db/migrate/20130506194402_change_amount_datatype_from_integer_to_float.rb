class ChangeAmountDatatypeFromIntegerToFloat < ActiveRecord::Migration
  def up
  	change_table :donations do |t|
      t.change :amount, :float
    end
  end

  def down
  	change_table :donations do |t|
      t.change :amount, :integer
    end
  end
end
