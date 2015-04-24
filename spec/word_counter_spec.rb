require('rspec')
require('word_counter')

describe('String#word_counter') do
  it("Returns the number of instances of the word word_counter was called on in the string word_counter was passed.") do
    expect("hotel".word_counter("the hotel was a good hotel").to(eq(2)))
  end
end
