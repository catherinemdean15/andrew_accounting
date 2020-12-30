require 'rails_helper'

describe Line, type: :model do
  describe 'validations' do
    it {should validate_presence_of :account}
  end

  describe 'relationships' do
    it {should belong_to :action}
  end
end
