require_relative 'string_calculator'

calculator = StringCalculator.new

puts "Enter numbers to add:"
input = gets.chomp #String

begin
  result = calculator.add(input)
  puts "Sum: #{result}"
rescue => e
  puts "Error: #{e.message}"
end
