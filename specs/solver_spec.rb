require_relative '../solver'

describe Solver do
  context 'When testing the factorial method' do
    it 'Should return the factorial of the given positive Integer' do
      fact = Solver.new
      test_fact = fact.factorial(4)
      test_zero = fact.factorial(0)
      test_negative = fact.factorial(-6)
      expect(test_fact).to eq 24
      expect(test_zero).to eq 1
      expect(test_negative).to eq 'Please, give a positive Integer'
    end
  end

  context 'When testing the reverse method' do
    it 'Should return the reversed string' do
      rev = Solver.new
      test_rev = rev.reverse('Mario')
      expect(test_rev).to eq 'oiraM'
    end
  end

  context 'When testing the fizzbuzz method' do
    fb = Solver.new
    it 'Should return fizz if n is divisible by 3' do
      fb_fizz = fb.fizzbuzz(9)
      expect(fb_fizz).to eq 'fizz'
    end
    it 'Should return buzz if n is divisible by 5' do
      fb_buzz = fb.fizzbuzz(10)
      expect(fb_buzz).to eq 'buzz'
    end
    it 'Should return fizzbuzz if n is divisible by 3 and 5' do
      fb_fb = fb.fizzbuzz(30)
      expect(fb_fb).to eq 'fizzbuzz'
    end
    it 'Should return the integer n as a string if not divisible by 3 or 5' do
      fb_not = fb.fizzbuzz(7)
      expect(fb_not).to eq '7'
    end
  end
end
