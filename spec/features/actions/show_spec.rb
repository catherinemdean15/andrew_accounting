require 'rails_helper'

describe 'Actions show page' do
  before :each do
    @action1 = Action.create!(date: '17/12/2015', description:"Office supplies")
    @line1 = Line.create!(account:1000, credit_amount: 389.99, action_id: @action1.id)
    @line2 = Line.create!(account:2000, debit_amount: 389.99, action_id: @action1.id)
  end

  it 'shows the list of lines for a transaction' do
    visit "/transactions/#{@action1.id}"
    
    expect(page).to have_content(@action1.date)
    expect(page).to have_content(@action1.description)
    expect(page).to have_content(@line1.account)
    expect(page).to have_content(@line1.credit_amount)
    expect(page).to have_content(@line1.debit_amount)
    expect(page).to have_content(@line2.account)
    expect(page).to have_content(@line2.credit_amount)
    expect(page).to have_content(@line2.debit_amount)
  end

end
