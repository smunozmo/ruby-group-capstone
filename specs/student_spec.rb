require_relative '../student'

describe Student do
  context 'When testing the Student class' do
    it "should say 'Mario' when we call the name method" do
      student = Student.new(18, 'Mario', true)
      message = student.name
      message2 = student.age
      message3 = student.parentperm
      expect(message).to eq 'Mario'
      expect(message2).to eq 18
      expect(message3).to eq true
    end
    it "should say 'Leonardo' when we call the name method" do
      student = Student.new(15, 'Leonardo', false)
      message = student.name
      message2 = student.age
      message3 = student.parentperm
      expect(message).to eq 'Leonardo'
      expect(message2).to eq 15
      expect(message3).to eq false
    end
  end
end
