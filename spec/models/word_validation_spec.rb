require 'rails_helper'

describe WordValidation do
  subject { WordValidation.new('foxes') }
  it 'exists' do
    expect(subject).to be_a WordValidation
  end
end
