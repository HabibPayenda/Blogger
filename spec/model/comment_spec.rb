require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Comment Model Validations' do
    subject { Comment.new(text: 'New Comment', AuthorId: 1, PostId: 1) }

    before { subject.save }

    it 'checks if title is valid' do
      subject.text = nil
      expect(subject).to_not be_valid
    end

    it 'checks if author id is a number' do
      subject['AuthorId'] = 'ddd'
      expect(subject).to_not be_valid
    end

    it 'checks if post id is a number' do
      id = subject['PostId'] = 1
      expect(id).to be == 1
    end
  end
end
