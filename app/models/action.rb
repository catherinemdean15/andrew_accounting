class Action < ApplicationRecord
  validates_presence_of :date, :description

  has_many :lines
end
