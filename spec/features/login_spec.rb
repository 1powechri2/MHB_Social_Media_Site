require 'rails_helper'

describe 'A user visits root' do
  it 'and logs in' do
    user = User.create(first_name: 'Christopher', last_name: 'Powell',
                       username: 'dudebooks', bio: 'YASSSSSSS!',
                       email: 'chris.ian.powell@gmail.com', password: 'dandelionwars123')
    visit '/'

    click_on 'Log In'

    within('#log_in_form') do
      fill_in 'username', with: 'dudebooks'
      fill_in 'password', with: 'dandelionwars123'
    end

    click_on 'Log In Bibliophile!'

    expect(current_path).to eq('/')
    expect(page).to have_content('Welcome Christopher Powell')
    expect(page).to have_content('Log Out')
  end
end
