# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'j.k. rowling'
    fill_in 'Price', with: '1'
    fill_in 'Date', with: '1/1/2022'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end
