require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'Displays error if the input number is negative' do
      solver = Solver.new
      expect { solver.factorial(-5) }.to raise_error(ArgumentError)
    end

    it 'Returns 1 when n is 0' do
      solver = Solver.new
      result = solver.factorial(0)
      expect(result).to eq(1)
    end
  
    it 'Returns 1 when n is 1' do
      solver = Solver.new
      result = solver.factorial(1)
      expect(result).to eq(1)
    end
  
    it 'Returns correct factorial when n is 7' do
      solver = Solver.new
      result = solver.factorial(7)
      expect(result).to eq(5040)
    end
  
    it 'Returns correct factorial when n is 12' do
      solver = Solver.new
      result = solver.factorial(12)
      expect(result).to eq(479001600)
    end
  end

  describe '#reverse' do
  it 'Correctly reverse a string' do
    solver = Solver.new
    result = solver.reverse('hello')
    expect(result).to eq('olleh')
  end

  it 'Correctly reverse a sentence with spaces' do
    solver = Solver.new
    result = solver.reverse('A little boy is coding.')
    expect(result).to eq('.gnidoc si yob elttil A')
  end

  it 'Correctly reverse a sentence with symbols' do
    solver = Solver.new
    result = solver.reverse('My password is Su**per/Secret/*')
    expect(result).to eq('*/terceS/rep**uS si drowssap yM')
  end
end
end
