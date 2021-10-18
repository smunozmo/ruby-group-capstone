require_relative '../person'

describe Person do
  context 'When testing Person class' do
    it 'Should create a person with age, name and parent permission parameters' do
      person1 = Person.new(14, 'leon')
      person1.validate_name
      person2 = Person.new(18, 'Mario')
      expect(person1.age).to eq 14
      expect(person1.name).to eq 'Leon'
      expect(person2.age).to eq 18
      expect(person2.name).to eq 'Mario'
      expect(person2.can_use_services?).to eq true
    end
  end
end
