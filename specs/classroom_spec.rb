require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'When testing the Classroom class' do
    it "should say 'Mario' when we call the students[0].name method" do
      instance = Classroom.new('306')
      instance2 = Student.new('15', 'Mario', true)
      instance.add_student(instance2)
      message = instance.students[0].name
      expect(message).to eq 'Mario'
    end
  end
end
