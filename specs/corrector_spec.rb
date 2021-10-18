require_relative '../corrector'

describe Corrector do
  context 'When testing the Corrector method' do
    it 'Should capitalize the word and return the word with a maximum of 10 characters long' do
      testing_string = 'testingname'
      corrected_string = Corrector.new.correct_name(testing_string)
      expect(corrected_string.length).to eq 10
      expect(corrected_string[0]).to eq 'T'
    end
  end
end
