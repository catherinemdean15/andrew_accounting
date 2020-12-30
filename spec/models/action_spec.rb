require 'rails_helper'

describe Action, type: :model do
  describe 'validations' do
    it {should validate_presence_of :date}
    it {should validate_presence_of :description}
  end

  describe 'relationships' do
    it {should have_many :lines}
  end

end
