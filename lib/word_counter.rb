class String
	define_method(:word_counter) do |phrase_to_search|

    instance_count = 0

    search_word = self.downcase()

    phrase_to_search_words = phrase_to_search.downcase().gsub(/[.,;:"'!?]/, "").split(" ")

    phrase_to_search_words.each() do |word|
      if word == search_word
        instance_count += 1
      end
    end

    instance_count

	end
end
