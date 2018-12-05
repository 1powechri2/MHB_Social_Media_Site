require 'rails_helper'

describe 'A user visits root' do
  context 'and is not yet signed up' do
    it 'signs up to join the bool club' do
      visit '/'

      click_on 'Sign Up'

      within('#sign_up') do
        fill_in 'first_name', with: 'Chris'
        fill_in 'last_name', with: 'Powell'
        fill_in 'username', with: 'dudebooks'
        fill_in 'bio', with: 'I love literature'
        fill_in 'mhb_pics', with: 'The Sound and the Fury'
        fill_in 'email', with: 'chris.ian.powell@hotmail.com'
        fill_in 'password', with: 'dandelionwars123'
      end

      click_on 'Submit'

      user = User.authenticate('dandelionwars123')

      expect(current_path).to eq('/')
      expect(page).to have_content('Chris Powell')
    end
  end
end
