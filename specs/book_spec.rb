require_relative '../book'

describe Book do
  context 'When testing the Book class' do
    it "should say 'Leos life' when we call the title method" do
      hw = Book.new('Leos life', 'Leonardo')
      message = hw.title
      message2 = hw.author
      expect(message).to eq 'Leos life'
      expect(message2).to eq 'Leonardo'
    end
    it "should say 'Marios Life' when we call the title method" do
      hw = Book.new('Marios Life', 'Mario')
      message = hw.title
      message2 = hw.author
      expect(message).to eq 'Marios Life'
      expect(message2).to eq 'Mario'
    end
  end
end
