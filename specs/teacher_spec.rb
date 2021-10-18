require_relative '../teacher'

describe Teacher do
  context 'When testing the teacher class' do
    it "should say 'Alejandra' when we call the name method" do
      teacher = Teacher.new(28, 'Alejandra', 'psicologist')
      message = teacher.name
      message2 = teacher.age
      message3 = teacher.specialization
      expect(message).to eq 'Alejandra'
      expect(message2).to eq 28
      expect(message3).to eq 'psicologist'
    end
    it "should say 'Leonardo' when we call the name method" do
      teacher = Teacher.new(27, 'Leonel', 'Itamae')
      message = teacher.name
      message2 = teacher.age
      message3 = teacher.specialization
      expect(message).to eq 'Leonel'
      expect(message2).to eq 27
      expect(message3).to eq 'Itamae'
    end
  end
end
