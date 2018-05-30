require 'rails_helper'

describe WordValidation do
  subject { WordValidation.new('foxes') }
  it 'exists' do
    expect(subject).to be_a WordValidation
  end

  context 'instance methods' do
    it '#word' do
      expect(subject.word).to eq('foxes')
    end

    it '#root_form' do
      expect(subject.root_form).to eq('fox')
    end
  end
end
