def roman_to_integer roman
	roman_nums = {	
						"I" => 1,
						"V" => 5,
						"X" => 10,
						"L" => 50,
						"C" => 100,
						"D" => 500,
						"M" => 1000
					}

	total = 0
	prev = 0
	index = roman.length - 1

	while index >= 0
		c = roman[index].upcase
		index = index - 1
		val = roman_nums[c]
		if !val 
			puts "This is not a valid roman numeral!"
			return
		end

		if val < prev
			val = val * -1
		else 
			prev = val
		end
		total = total + val
	end

	total

end

puts "Please enter a roman numeral."
roman = gets.chomp

puts roman_to_integer(roman)