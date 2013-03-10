class RomanNumeralGenerator
	ROMAN_NUMERALS = {
		1 => "I",
		4 => "IV",
		5 => "V",
		9 => "IX",
		10 => "X",
		40 => "XL",
		50 => "L",
		90 => "XC",
		100 => "C",
		400 => "CD",
		500 => "D",
		900 => "CM",
		1000 => "M"
	}
	
	# Returns roman numeral representation of integer input
	def self.generate (to_convert)
	
		# Firewalling
		raise Exception.new("Only numeric values expected") if !(to_convert.is_a? Numeric)
		raise Exception.new("Only numeric values between 1 and 3999 expected") if (to_convert > 3999 || to_convert < 1)

		#Find the highest roman numeral that is less than or equal to the current input
		current_roman_numeral_value = 1
		ROMAN_NUMERALS.each do |key, value|
			if key > to_convert
				break
			end
			current_roman_numeral_value = key
		end

		# Number of times to output the roman numeral
		number_of_times = to_convert / current_roman_numeral_value
		# For complex values we have a remainder
		left_over = to_convert % current_roman_numeral_value


		result = ""
		# Add repeating characters to the output
		number_of_times.times do 
			result += ROMAN_NUMERALS[current_roman_numeral_value]
		end

		# Call the function recursively if we have anything left over
		if left_over > 0
			result += self.generate(left_over)
		end
		
		return result

	end
end
