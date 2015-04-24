class String
	define_method(:word_counter) do |input_phrase|

    instance_count = 0

    search_word = self.downcase()

	  input_phrase_words = input_phrase.downcase().gsub(/[.,;:"'!?]/, "").split(" ")

    input_phrase_words.each() do |word|
      if word == search_word
        instance_count += 1
      end
    end

    instance_count

	end
end
