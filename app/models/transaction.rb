class Transaction < ApplicationRecord
  validates_presence_of :date, :account, :type, :description, :amount
  enum type: [:debit, :credit]

end
