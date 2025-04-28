require_relative '../string_calculator'

RSpec.describe StringCalculator do
  
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for single number input' do
      expect(calculator.add("4")).to eq(4)
    end

    it 'returns the sum of numbers with "," seperated values' do
      expect(calculator.add("4,5")).to eq(9)
      expect(calculator.add("4,1,2,3,2,3")).to eq(15)
      expect(calculator.add("23")).to eq(23)
    end

     
  end

end
