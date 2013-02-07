class Sequencer

	def initialize(string)
		array = []
		
		string.split(',').each do |number|
			array << number.to_i
		end

		test_array(array)
		
	end

	def test_array(array)
		@n = array.count
		@indices = (1..@n-1)
		
		if check_arithmetic(array)
			arithmetic_sequence(array)
			puts "This is an arithmetic sequence:"
			puts array
		elsif check_geometric(array)
			geometric_sequence(array)
			puts "This is a geometric sequence:"
			puts array
		elsif check_fibonacci(array)
			fibonacci_sequence(array) 
			puts "This is a Fibonacci sequence:"
			puts array
		elsif check_squared(array)
		  	puts "This is a squared sequence:"
			squared_sequence(array) 
		elsif check_cubed(array)
		  	puts "This is a cubed sequence:"
			cubed_sequence(array) 
		else 
			puts "I'm sorry, I don't recognize this sequence."
		end
	end

	def check_arithmetic(array)
		diff_array = @indices.map {|n| array[n] - array[n-1]}
		diff_array.sort!
		if diff_array.first == diff_array.last
			return true
		end
	end

	def arithmetic_sequence(array)
		interval = array[1] - array[0]
		last = array[@n-1]
		10.times do 
			next_num = last + interval
			array << next_num
			last += interval
		end
		array
	end

	def check_geometric(array)
		div_array = @indices.map {|n| array[n] / array[n-1]}
		div_array.sort!
		if div_array.first == div_array.last
			return true
		end
	end

	def geometric_sequence(array)
		multiplier = array[1] / array[0]
		last = array[@n-1]
		10.times do 
			next_num = last * multiplier
			array << next_num
			last *= multiplier
		end
		array
	end

	def check_fibonacci(array)
		fib_array = @indices.map {|n| array[n] - array[n-1]}
		new_indices = (0..@n-1)
		new_indices.each do |n|
			if array[n] == fib_array[n+1]
				return true
			else
				break
				return false
			end
		end
	end

	def fibonacci_sequence(array)
		10.times do 
			new_term ||= array[-2] + array[-1]
			array << new_term
			new_term += array.last
		end
		array
	end

	def check_squared(array)
		new_indices = (0..@n-1)
		new_indices.each do |n|
			if (array[n] % Math.sqrt(array[n]) == 0)
				true
			else
				break
				false
			end
		end
	end

	def check_cubed(array)
		new_indices = (0..@n-1)
		new_indices.each do |n|
			if (array[n] % Math.cbrt(array[n]) == 0)
				true
			else
				break
				false
			end
		end
	end

	# def root(num, power)
	# 	Math.exp(Math.log(num.to_f)/power.to_f)
	# end
		
	def squared_sequence(array)
		new_array = []
		array.each do |num|
			new_array << Math.sqrt(num).to_i
		end
		test_roots(new_array)
		new_array.map! {|n| n**2}
		puts new_array
	end

	def cubed_sequence(array)
		new_array = []
		array.each do |num|
			new_array << Math.cbrt(num).to_i
		end
		test_roots(new_array)
		new_array.map! {|n| n**3}
		puts new_array
	end

	def test_roots(array)
		if check_arithmetic(array)
		 	arithmetic_sequence(array)
		elsif check_geometric(array)
			geometric_sequence(array)
		elsif check_fibonacci(array)
			fibonacci_sequence(array)
		end
		array
	end
end

Sequencer.new("1, 9, 25, 49")
puts
Sequencer.new("7, 12, 17")
puts 
Sequencer.new("2, 4, 8, 16")
puts
Sequencer.new("1, 8, 27, 64")
puts 
Sequencer.new("1, 4, 10, 11")
puts
Sequencer.new("1, 2, 3, 5, 8")
puts
Sequencer.new("1, 4, 9, 25, 64")