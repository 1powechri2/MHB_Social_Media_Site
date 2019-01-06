require 'rails_helper'

RSpec.describe Book, type: :model do
  it {should validate_presence_of(:title) }
  it {should validate_presence_of(:author) }
  it {should validate_presence_of(:description) }
  
  it 'Can be created' do
    book = Book.create(title: 'There There',
                       author: 'Tommy Orange',
                       description: 'An Astonishing Literaty Debut -Margaret Atwood')

    expect(book.valid?).to be(true)
    expect(book.status).to eq('read')
  end
end
