def initialize_books(_books, _all_genres, _all_authors, _all_labels, _all_sources)
  @books.each do |b|
    @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"] = Label.new(b['label_title'].downcase, b['label_color'].downcase) if @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"].nil?
    # @all_sources[book_source] = Source.new(book_source)

    new_book = Book.new(b['item_publish_date'], b['book_publisher'], b['book_cover_state'])

    new_book.label = @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"]
    # new_book.source(all_sources[b['book_source']])

    @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"].add_item(new_book)
    # @all_sources[book_source].add_item(new_book)
  end

  # all_genres[book_genre] = Genre.new(book_genre)
  # all_authors["#{author_first_name} #{author_last_name}"] = Author.new(author_first_name, author_last_name)

  # new_book.genre(all_genres[book_genre])
  # new_book.author(all_authors["#{author_first_name} #{author_last_name}"])

  # all_genres[book_genre].add_item(new_book)
  # all_authors["#{author_first_name} #{author_last_name}"].add_item(new_book)
end
