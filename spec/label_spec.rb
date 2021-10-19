require_relative '../label'
require_relative '../book'

describe Label do
  context 'when use add_item method' do
    it 'items array length increase by one' do
      book_label_title = 'Hunger Games'
      book_label_color = 'yellow'
      book_publish_date = '2020-10-18'
      book_publisher = 'Some Publisher'
      book_cover_state = 'good'

      new_label = Label.new(book_label_title.downcase, book_label_color.downcase)
      new_book = Book.new(book_publish_date, book_publisher, book_cover_state)
      new_book.label = new_label
      new_label.add_item(new_book)

      expect(new_label.items.length).to eq(1)
    end
  end
end
