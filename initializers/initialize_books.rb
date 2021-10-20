def initialize_books()
  @books.each do |b|
    @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"] = Label.new(b['label_title'].downcase, b['label_color'].downcase) if @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"].nil?
    @all_sources[b['source_name']] = Source.new(b['source_name']) if @all_sources[b['source_name']].nil?
    @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"] = Author.new(b['author_first_name'], b['author_last_name']) if @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"].nil?
    @all_genres[b['genre_name']] = Genre.new(b['genre_name']) if @all_genres[b['genre_name']].nil?

    new_book = Book.new(b['item_publish_date'], b['book_publisher'], b['book_cover_state'])

    new_book.label = @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"]
    new_book.source = @all_sources[b['source_name']]
    new_book.author = @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"]
    new_book.genre = @all_genres[b['genre_name']]

    @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"].add_item(new_book)
    @all_sources[b['source_name']].add_item(new_book)
    @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"].add_item(new_book)
    @all_genres[b['genre_name']].add_item(new_book)
  end
end
