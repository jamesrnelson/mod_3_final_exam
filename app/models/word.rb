class Word
  attr_reader :word, :root_form

  def initialize(attrs)
    @word = attrs[:id]
    @root_form = attrs[:lexicalEntries].first[:inflectionOf].first[:id]
  end
end
