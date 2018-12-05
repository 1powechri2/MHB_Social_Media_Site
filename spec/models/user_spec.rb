require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:bio) }
  it { should validate_presence_of(:mhb_pics) }
  it { should validate_presence_of(:email) }

  it { should validate_uniqueness_of(:username) }
  it { should validate_uniqueness_of(:email) }

  it { should have_secure_password }

  it { should have_many(:messages) }
end

describe 'A user' do
  it 'has attributes' do
    user = {first_name: 'Chris',
           last_name: 'Powell',
           username: 'booklover420',
           bio: 'I love stuff, fun haha.',
           mhb_pics: 'Blackass',
           email: 'chris.ian.powell@gmail.com',
           password: 'sfyack1'}
    me = User.create(user)

    expect(me.first_name).to eq(user[:first_name])
    expect(me.password).to eq(user[:password])
  end

  it 'can create many messages' do
    user = {first_name: 'Chris',
           last_name: 'Powell',
           username: 'booklover420',
           bio: 'I love stuff, fun haha.',
           mhb_pics: 'Blackass',
           email: 'chris.ian.powell@gmail.com',
           password: 'sfyack1'}
    me = User.create(user)
    me.messages.create(message: 'blahalalhahshslals')
    me.messages.create(message: 'ghgughughuhguhuguhguhg')
    me.messages.create(message: 'hey there Dolly')

    expect(me.messages.length).to eq(3)
  end
end
