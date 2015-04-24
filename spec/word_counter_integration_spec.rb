class String
	define_method(:word_counter) do |input_phrase|

    instance_count = 0
	  input_phrase_words = input_phrase.split(" ")

    input_phrase_words.each() do |word|
      if word == self
        instance_count += 1
      end
    end

    instance_count

	end
end
