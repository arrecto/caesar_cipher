def caesar_cipher(code, shift=5)

	#converting the code into Array
	code_array = code.split("")
	
	#shifting the Array string letter elements to desired shifting value
	shifted_code = code_array.map do |letter|
	 	if letter.ord.between?(65,122)
	 		shifted_letter_ord = letter.ord + shift
	 			
	 			#for capital letters that exceed Z (ascii = 90)
	 			if letter.ord.between?(65,90) && shifted_letter_ord > 90
	 				shifted_letter_ord = shifted_letter_ord - 90 + 64
	 				
	 			#for small letters that exceed z (ascii = 122)
	 			elsif letter.ord.between?(97,122)&&shifted_letter_ord>122
	 				shifted_letter_ord = shifted_letter_ord -122+96
	 			end
	 		letter = (shifted_letter_ord).chr
	 	else
	 		letter =  letter
	 	end
	 	
	 end
	 
	 #converting the shifted Array into strings
	shifted_code.join
end
	
