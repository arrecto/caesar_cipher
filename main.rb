def caesar_cipher(code, shift=5)
	code_array = code.split("")
	shifted_code = code_array.map do |letter|
	 	if letter.ord.between?(65,122)
	 		shifted_letter_ord = letter.ord + shift
	 			if letter.ord.between?(65,90) && shifted_letter_ord > 90
	 				shifted_letter_ord = shifted_letter_ord - 90 + 64
	 			elsif letter.ord.between?(97,122)&&shifted_letter_ord>122
	 				shifted_letter_ord = shifted_letter_ord -122+96
	 			end
	 		letter = (shifted_letter_ord).chr
	 	else
	 		letter =  letter
	 	end
	 	
	 end
	shifted_code.join
end
	
