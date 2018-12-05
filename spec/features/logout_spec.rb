require 'rails_helper'

describe 'log out function' do
  it 'logs a user out' do
    visit '/'

    click_on 'Sign Up'

    within('#sign_up_form') do
      fill_in 'first_name', with: 'Chris'
      fill_in 'last_name', with: 'Powell'
      fill_in 'username', with: 'dudebooks'
      fill_in 'bio', with: 'I love literature'
      fill_in 'email', with: 'chris.ian.powell@hotmail.com'
      fill_in 'password', with: 'dandelionwars123'
    end

    click_on 'Become A Bibliophile!'

    expect(current_path).to eq('/')
    expect(page).to have_content('Welcome Chris Powell')
    expect(page).to have_content('Log Out')

    click_on 'Log Out'

    expect(current_path).to eq('/')
    expect(page).to have_content('Sign Up')
    expect(page).to have_content('Log In')
  end
end
