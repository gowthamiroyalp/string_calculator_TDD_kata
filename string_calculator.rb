class StringCalculator

	def add(numbers)
		return 0 if numbers.strip.empty?

		delimiter = [",", "\n"] # Default delimiters

	    if numbers.start_with?("//")
	      delimiter = numbers[2]
	      numbers = numbers.split("\n", 2)[1] # remove the first line
	      numbers = numbers.split(delimiter)
	    else
	      numbers = numbers.split(/[\n,]/)
	    end

	    values = numbers.map(&:to_i)

	    negatives = values.select { |n| n < 0 }
	    unless negatives.empty?
	      raise "negative numbers not allowed #{negatives.join(',')}"
	    end

	    values.reject { |n| n > 1000 }.sum

	end

end