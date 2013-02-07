class Integer
	
	def factorial
		
		num = self.to_i
		tot = num
		while num > 1
			tot = tot * (num-1)
			num -= 1
		end
		
		tot
	end
end

puts 1.factorial
puts 3.factorial
puts 7.factorial
puts 10.factorial
