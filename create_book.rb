require_relative './label'
require_relative './book'

def create_book(_books, _all_genres, _all_authors, _all_labels, _all_sources)
  # option_header('Add a book')

  # Label
  print 'Label title (e.g. new or gift): '
  book_label_title = gets.chomp
  print 'Label color (e.g. blue or yellow): '
  book_label_color = gets.chomp

  # Genre
  print 'Genre: '
  book_genre = gets.chomp

  # Source
  print 'Source (e.g. from a friend or online shop): '
  book_source = gets.chomp

  # Author
  print 'Author - First Name: '
  author_first_name = gets.chomp
  print 'Author - Last Name: '
  author_last_name = gets.chomp

  # Book Data
  print 'Publish date (Format: YYYY-MM-DD): '
  book_publish_date = gets.chomp
  print 'Publisher: '
  book_publisher = gets.chomp
  print 'Cover state (e.g. good or bad): '
  book_cover_state = gets.chomp

  @all_labels["#{book_label_title.downcase}_#{book_label_color.downcase}"] = Label.new(book_label_title.downcase, book_label_color.downcase) if @all_labels["#{book_label_title.downcase}_#{book_label_color.downcase}"].nil?

  # all_genres[book_genre] = Genre.new(book_genre)
  # all_authors["#{author_first_name} #{author_last_name}"] = Author.new(author_first_name, author_last_name)
  # all_sources[book_source] = Source.new(book_source)

  new_book = Book.new(book_publish_date, book_publisher, book_cover_state)
  # new_book.genre(all_genres[book_genre])
  # new_book.author(all_authors["#{author_first_name} #{author_last_name}"])
  # new_book.source(all_sources[book_source])
  new_book.label = @all_labels["#{book_label_title.downcase}_#{book_label_color.downcase}"]

  @all_labels["#{book_label_title.downcase}_#{book_label_color.downcase}"].add_item(new_book)
  # all_genres[book_genre].add_item(new_book)
  # all_authors["#{author_first_name} #{author_last_name}"].add_item(new_book)
  # all_sources[book_source].add_item(new_book)

  book_to_save = { 'json_class' => new_book.class, 'book_publisher' => new_book.publisher, 'book_cover_state' => new_book.cover_state,
                   'genre_name' => 'new_book.genre.name', 'author_first_name' => 'new_book.author.first_name', 'author_last_name' => 'new_book.author.last_name', 'source_name' => 'new_book.source.name',
                   'label_title' => new_book.label.title, 'label_color' => new_book.label.color, 'item_publish_date' => new_book.publish_date, 'item_move_to_archive' => new_book.move_to_archive }
  @books.push(book_to_save)
end
