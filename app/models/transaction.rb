class Transaction < ApplicationRecord
  validates_presence_of :date, :account, :type, :description
  enum type: [:debit, :credit]

end
