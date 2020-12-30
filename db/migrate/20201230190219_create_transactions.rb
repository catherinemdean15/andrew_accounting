class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :date
      t.integer :account
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
