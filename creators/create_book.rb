def create_book()
  # Label
  print 'Label title (e.g. new or gift): '
  book_label_title = gets.chomp.downcase
  print 'Label color (e.g. blue or yellow): '
  book_label_color = gets.chomp.downcase

  # Genre
  print 'Genre: '
  book_genre = gets.chomp.downcase

  # Source
  print 'Source (e.g. from a friend or online shop): '
  book_source = gets.chomp.downcase

  # Author
  print 'Author - First Name: '
  author_first_name = gets.chomp.downcase
  print 'Author - Last Name: '
  author_last_name = gets.chomp.downcase

  # Book Data
  print 'Publish date (Format: YYYY-MM-DD): '
  book_publish_date = gets.chomp.downcase
  print 'Publisher: '
  book_publisher = gets.chomp.downcase
  print 'Cover state (e.g. good or bad): '
  book_cover_state = gets.chomp.downcase

  @all_labels["#{book_label_title.downcase}_#{book_label_color.downcase}"] = Label.new(book_label_title.downcase, book_label_color.downcase) if @all_labels["#{book_label_title.downcase}_#{book_label_color.downcase}"].nil?
  @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"] = Author.new(author_first_name.downcase, author_last_name.downcase) if @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"].nil?
  @all_genres[book_genre] = Genre.new(book_genre)
  @all_sources[book_source] = Source.new(book_source) if @all_sources[book_source].nil?

  new_book = Book.new(book_publish_date, book_publisher, book_cover_state)

  new_book.genre = @all_genres[book_genre]
  new_book.author = @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"]
  new_book.source = @all_sources[book_source]
  new_book.label = @all_labels["#{book_label_title.downcase}_#{book_label_color.downcase}"]

  @all_labels["#{book_label_title.downcase}_#{book_label_color.downcase}"].add_item(new_book)
  @all_genres[book_genre].add_item(new_book)
  @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"].add_item(new_book)
  @all_sources[book_source].add_item(new_book)

  book_to_save = { 'json_class' => new_book.class, 'book_publisher' => new_book.publisher, 'book_cover_state' => new_book.cover_state,
                   'genre_name' => new_book.genre.name, 'author_first_name' => new_book.author.first_name, 'author_last_name' => new_book.author.last_name, 'source_name' => new_book.source.name,
                   'label_title' => new_book.label.title, 'label_color' => new_book.label.color, 'item_publish_date' => new_book.publish_date, 'item_move_to_archive' => new_book.move_to_archive }
  @books.push(book_to_save)
  puts "\nSuccess!\n".green
end
