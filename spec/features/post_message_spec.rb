require 'rails_helper'

describe 'Posting a message' do
  context 'the homepage message board' do
    it 'will save new message to the db' do
      user = User.create(first_name: 'Christopher', last_name: 'Powell',
                         username: 'dudebooks', bio: 'YASSSSSSS!',
                         email: 'chris.ian.powell@gmail.com', password: 'dandelionwars123')

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/'

      message = 'Hey everybody, does a picnic sound fun?'

      fill_in :message_message, with: message

      click_on 'Add Message'

      msg = Message.find_by_message(message)

      expect(msg.valid?).to be(true)
    end
  end
end
