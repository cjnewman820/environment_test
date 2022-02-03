# location: spec/feature/integration_spec.rb
require 'rails_helper'

# Book
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J K Rowling'
    fill_in 'Price', with: 12
    fill_in 'Date', with: Date.today
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J K Rowling')
    expect(page).to have_content(12)
    expect(page).to have_content(Date.today)
  end
end