class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines do |t|
      t.integer :account
      t.float :debit_amount
      t.float :credit_amount

      t.timestamps
    end
  end
end
