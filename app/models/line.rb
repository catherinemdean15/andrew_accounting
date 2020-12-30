class Line < ApplicationRecord
  belongs_to :action
  validates_presence_of :account
end
