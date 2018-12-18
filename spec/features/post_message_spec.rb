require 'rails_helper'

describe 'Posting a message' do
  context 'the homepage message board' do
    it 'will save new message to the db' do
      visit '/'

      message = 'Hey everybody, does a picnic sound fun?'

      fill_in :message_message, with: message

      click_on 'Add Message'

      msg = Message.where(message: message)

      expect(msg.valid?).to be(true)
    end
  end
end
