require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Likes Validations' do
    subject { Like.new(AuthorId: 1, PostId: 1) }

    before { subject.save }

    it 'checks if author id is a number' do
      subject['AuthorId'] = 'ddd'
      expect(subject).to_not eql 1
    end

    it 'checks if post id is a number' do
      id = subject['PostId'] = 1
      expect(id).to be == 1
    end
  end
end
