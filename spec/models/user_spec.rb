require 'rails_helper'

describe User do
  describe 'instance methods' do
    it 'score' do
      user = create(:user)

      user.plays.create(word: 'hello', score: 5)
      user.plays.create(word: 'please', score: 10)

      expect(user.score).to eq(15)
    end
  end
end
