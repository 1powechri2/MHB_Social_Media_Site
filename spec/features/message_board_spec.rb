require 'rails_helper'

describe 'The homepage' do
  it 'displays a message board that can be updated' do
    user1 = {first_name: 'Chris',
           last_name: 'Powell',
           username: 'booklover420',
           bio: 'I love stuff, fun haha.',
           mhb_pics: 'Blackass',
           email: 'chris.ian.powell@gmail.com',
           password: 'sfyack1'}
    user2 = {first_name: 'Chrissss',
           last_name: 'Powellls',
           username: 'booklover565',
           bio: 'I love fun',
           mhb_pics: 'The Master and Margarita',
           email: 'chris.liam.powellls@gmail.com',
           password: 'galk1'}
    me = User.create(user1)
    you = User.create(user2)

    message1 = me.messages.create(message: 'blahalalhahshslals')
    message2 = you.messages.create(message: 'Life free or dive')
    message3 = me.messages.create(message: 'ghgughughuhguhuguhguhg')
    message4 = you.messages.create(message: 'Save Ferris')
    message5 = me.messages.create(message: 'hey there Dolly')

    visit '/'

    expect(page).to have_content(message1.message)
    expect(page).to have_content(message2.message)
    expect(page).to have_content(message3.message)
    expect(page).to have_content(message4.message)
    expect(page).to have_content(message5.message)
  end
end
