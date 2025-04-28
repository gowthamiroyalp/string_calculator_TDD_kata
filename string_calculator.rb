class StringCalculator

	def add(numbers)
		# puts "numbers are: #{numbers} in addition calculation."
		return 0 if numbers.strip.empty?

		delimiter = [",", "\n"] # Default delimiters

	    if numbers.start_with?("//")
	      delimiter = numbers[2]
	      numbers = numbers.split("\n", 2)[1] # remove the first line
	      numbers = numbers.split(delimiter)
	    else
	      numbers = numbers.split(/[\n,]/)
	    end

	    numbers.map(&:to_i).sum
	end

end