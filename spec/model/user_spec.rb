require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(Name: 'New', post_counter: 30, Photo: 'New Photo', Bio: 'A new user.') }

  before { subject.save }

  it 'Name should be present' do
    subject['Name'] = nil
    expect(subject).to_not be_valid
  end

  it 'postsCounter should be present' do
    subject.post_counter = nil
    expect(subject).to_not be_valid
  end

  it 'postsCounter should be integer' do
    subject.post_counter = 'a'
    expect(subject).to_not be_valid
  end

  it 'postsCounter should be greater than or equal to zero' do
    subject.post_counter = -1
    expect(subject).to_not be_valid
  end

  it 'check if posts counter is equal or greater than zero' do
    expect(subject.post_counter).to be >= 0
  end
end
