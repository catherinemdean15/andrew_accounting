require 'rails_helper'

describe Transaction, type: :model do
  describe 'validations' do
    it {should validate_presence_of :date}
    it {should validate_presence_of :account}
    it {should validate_presence_of :type}
    it {should validate_presence_of :description}
    it {should validate_presence_of :amount}


  end

end
