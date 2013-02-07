class Integer
	
	def to_roman

		thous = (self / 1000)
		hund = (self % 1000 / 100)
		tens = (self % 100 / 10)
		ones = (self % 10)

		roman = "M" * thous

		if hund == 9
			roman = roman + "CM"
		elsif hund == 4
			roman = roman + "CD"
		else 
			roman = roman + "D" * (self % 1000 / 500)
			roman = roman + "C" * (self % 500 / 100)
		end

		if tens == 9
			roman = roman + "XC"
		elsif tens == 4
			roman = roman + "XL"
		else 
			roman = roman + "L" * (self % 100 / 50)
			roman = roman + "X" * (self % 50 / 10)
		end

		if ones == 9
			roman = roman + "IX"
		elsif tens == 4
			roman = roman + "IV"
		else 
			roman = roman + "V" * (self % 10 / 5)
			roman = roman + "I" * (self % 5)
		end

		roman

	end
end


puts 	467.to_roman