def substrings(substring, dictionary)

	word_counter = Hash.new(0)
	word_array = substring.split
	
	word_array.each do |word|
	
		letters = word.downcase.split("")
		
		#removing the special characters in the word
		letters_filtered = letters.select {|letter| letter.ord.between?(65,90)||letter.ord.between?(97,122)}
		word_filtered = letters_filtered.join
		
		dictionary.each do |word|
			if word_filtered.include?(word)
				word_counter[word] += 1
			end
		end
	end	
	word_counter
end

