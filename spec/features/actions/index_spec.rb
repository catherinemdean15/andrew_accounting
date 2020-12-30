require 'rails_helper'

describe 'Actions index page' do
  before :each do
    @action1 = Action.create!(date: '17/12/2015', description:"Office supplies")
    @line1 = Line.create!(account:1000, credit_amount: 389.99, action_id: @action1.id)
    @line2 = Line.create!(account:2000, debit_amount: 389.99, action_id: @action1.id)
  end

  it 'shows the list of transaction dates' do
  visit '/transactions'
  expect(page).to have_content(@action1.date)
  expect(page).to have_content(@action1.description)
  end


  it 'has links to transaction show' do
  visit '/transactions'
  expect(page).to have_link(@action1.date)
  end

end
