require 'rails_helper'

describe WordValidation do
  subject { WordValidation.new('foxes') }
  it 'exists' do
    expect(subject).to be_a WordValidation
  end

  context 'instance methods', vcr: true do
    it '#word' do
      expect(subject.word).to be_a Word
    end
  end
end
