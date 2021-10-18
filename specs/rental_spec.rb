require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe Rental do
  context 'When testing the Rental class' do
    it 'Should create a rental for the given date book and person' do
      person1 = Person.new(15, 'Leon')
      book1 = Book.new('Ruby for dumb micronauts', 'Leonard')
      rental1 = Rental.new('10/10/2021', book1, person1)
      expect(rental1.date).to eq '10/10/2021'
      expect(rental1.book.title).to eq 'Ruby for dumb micronauts'
      expect(rental1.person.name).to eq 'Leon'
    end
  end
end
