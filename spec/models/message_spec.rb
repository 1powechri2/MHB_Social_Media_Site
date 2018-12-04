require 'rails_helper'

describe Message do
  it {should validate_presence_of(:message) }
  it {should belong_to(:user) }
end
