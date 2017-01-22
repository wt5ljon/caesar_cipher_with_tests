# implements the Caesar cipher function
#
class CaesarCipher
	attr_accessor :input_phrase, :shift

	def initialize phrase, shift
		@input_phrase = phrase
		@shift = shift
	end

	def encode
		caesar(@input_phrase, @shift)
	end

	def decode
		caesar(@input_phrase, 26 - @shift)
	end

	private

	def caesar(text, shift)
		(0..text.length-1).each do |i|
			# get the ascii value of each character
			char = text.getbyte(i).to_i
			if text[i] >= "A" and text[i] <= "Z"
				char = char + (shift % 26)
				if char > 90
					char = char - 26
				end
			elsif text[i] >= "a" and text[i] <= "z"
				char = char + (shift % 26)
				if char > 122 
					char = char - 26
				end
			end
			# replace the character
			text.setbyte(i, char)
		end
		text
	end

end

