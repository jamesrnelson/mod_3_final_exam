class Word
  attr_reader :word, :root_form

  def initialize(attrs)
    binding.pry
    @word = attrs[:id]
    @root_form = attrs[:lexical_entries].first[:inflectionOf].first[:id]
  end
end
