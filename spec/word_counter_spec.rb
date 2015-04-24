require('rspec')
require('word_counter')

describe('String#word_counter') do
  it("Returns the number of instances of the word word_counter was called on in the string word_counter was passed.") do
    expect("hotel".word_counter("the hotel was a good hotel")).to(eq(2))
  end
  it("Returns the number of instances of the word word_counter was called on in the string word_counter was passed, accounting for punctuation.") do
    expect("hotel".word_counter("The hotel was a bad hotel, so we went to a different hotel.")).to(eq(3))
  end
  it("Returns the number of instances of the word word_counter was called on in the string word_counter was passed, accounting for punctuation and capitalization.") do
    expect("hotel".word_counter("The Grand Central Hotel was a bad hotel, so we went to the Riverside Hotel.")).to(eq(3))
  end
end
