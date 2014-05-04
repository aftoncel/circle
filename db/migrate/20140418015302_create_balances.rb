class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.string :description
      t.integer :credit
      t.integer :debit
      t.integer :balance

      t.timestamps
    end
  end
end
