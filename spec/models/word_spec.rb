require 'rails_helper'

describe Word do
  let(:attrs) {
    {
       "id": "foxes",
       "language": "en",
       "lexicalEntries": [
           {
               "grammaticalFeatures": [
                   {
                       "text": "Third",
                       "type": "Person"
                   },
                   {
                       "text": "Singular",
                       "type": "Number"
                   },
                   {
                       "text": "Present",
                       "type": "Tense"
                   }
               ],
               "inflectionOf": [
                   {
                       "id": "fox",
                       "text": "fox"
                   }
               ],
               "language": "en",
               "lexicalCategory": "Verb",
               "text": "foxes"
           },
           {
               "grammaticalFeatures": [
                   {
                       "text": "Plural",
                       "type": "Number"
                   }
               ],
               "inflectionOf": [
                   {
                       "id": "fox",
                       "text": "fox"
                   }
               ],
               "language": "en",
               "lexicalCategory": "Noun",
               "text": "foxes"
           }
       ],
       "word": "foxes"
    }
  }
  subject { Word.new(attrs) }
  it 'exists' do
    expect(subject).to be_a Word
  end
end
