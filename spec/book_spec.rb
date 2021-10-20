require_relative '../classes/book'

describe Book do
  context 'when add a book with a bad cover state' do
    it 'method move_to_archive should be true' do
      book_publish_date = '2020-10-18'
      book_publisher = 'Some Publisher'
      book_cover_state = 'bad'

      new_book = Book.new(book_publish_date, book_publisher, book_cover_state)

      expect(new_book.move_to_archive).to eq(true)
      expect(new_book.publish_date).to eq('2020-10-18')
      expect(new_book.publisher).to eq('Some Publisher')
    end
  end
end
