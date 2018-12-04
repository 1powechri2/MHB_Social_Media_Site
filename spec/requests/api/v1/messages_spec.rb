require 'rails_helper'

describe 'Messages Api' do
  context 'api/v1/messages' do
    it 'returns json of all messages' do
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

      me.messages.create(message: 'blahalalhahshslals')
      you.messages.create(message: 'Life free or dive')
      me.messages.create(message: 'ghgughughuhguhuguhguhg')
      you.messages.create(message: 'Save Ferris')
      me.messages.create(message: 'hey there Dolly')

      get '/api/v1/messages'

      expect(response).to be_successful

      resp_json = JSON.parse(response.body, symbolize_names: true)
      
      expect(resp_json.length).to eq(5)
      expect(resp_json.first[:message]).to eq('blahalalhahshslals')
      expect(resp_json.first[:user][:username]).to eq(me.username)
    end
  end
end
