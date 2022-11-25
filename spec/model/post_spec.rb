require 'rails_helper'
RSpec.describe Post, type: :model do
  subject { Post.new(Title: 'First Post', comment_counter: 2, like_counter: 2) }

  before { subject.save }

  it 'title should be present' do
    subject['Title'] = nil
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be present' do
    subject.comment_counter = nil
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be present' do
    subject.like_counter = nil
    expect(subject).to_not be_valid
  end

  it 'title should not be too long' do
    subject['Title'] = 'a' * 260
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be integer' do
    subject.comment_counter = 'b'
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be greater than or equal to zero' do
    subject.comment_counter = -1
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be integer' do
    subject.like_counter = 'i'
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be greater than or equal to zero' do
    subject.like_counter = -1
    expect(subject).to_not be_valid
  end

  it 'check if likes counter is equal or greater than zero' do
    expect(subject.like_counter).to be >= 0
  end
end
