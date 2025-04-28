require_relative '../string_calculator'

RSpec.describe StringCalculator do
  
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns sum of numbers only for non empty string' do
      expect(calculator.add("34er")).to eq(7)
      expect(calculator.add("32er ")).to eq(5)
      expect(calculator.add("34er@@")).to eq(7)
      expect(calculator.add("1,5")).to eq(6)
    end
     
  end

end
