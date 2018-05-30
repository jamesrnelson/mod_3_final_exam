require 'rails_helper'

describe 'Guest User' do
  context 'visits root path and fills in word' do
    it 'a valid word should be valid', vcr: true do
      visit root_path
      # As a guest user (no sign in necessary)
      # When I visit "/"

      fill_in :search, with: 'foxes'
      # And I fill in a text box with "foxes"
      click_on 'Validate Word'
      # And I click "Validate Word"
      expect(page).to have_content("'foxes' is a valid word and its root form is 'fox'.")
      # Then I should see a message that says "'foxes' is a valid word and its root form is 'fox'."

    end

    it 'an invalid word should be invalid', vcr: true do
      visit root_path
      # As a guest user
      # When I visit "/"
      fill_in :search, with: 'foxez'
      # And I fill in a text box with "foxez"
      click_on 'Validate Word'
      # And I click "Validate Word"
      expect(page).to have_content("'foxez' is not a valid word.")
      # Then I should see a message that says "'foxez' is not a valid word."
    end
  end
end
