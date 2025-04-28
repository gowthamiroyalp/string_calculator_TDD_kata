class StringCalculator

	def add(numbers)
		# puts "numbers are: #{numbers} in addition calculation."
		return 0 if numbers.strip.empty?

		# Replace newline with comma, then split by comma and map to to_i and sum
    	numbers.gsub("\n", ",")
	         .split(",")
	         .map(&:to_i)
	         .sum
	end

end