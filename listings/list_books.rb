def list_books(books)
  puts
  puts ' BOOKS '.center(IO.console.winsize[1], '-').yellow
  puts 'No items created'.red if books.length.zero?
  books.each do |b|
    puts "[#{b['json_class']}] Genre: #{b['genre_name'].capitalize}, Author: #{b['author_first_name'].capitalize} #{b['author_last_name'].capitalize}, Source: #{b['source_name'].capitalize}, Label: #{b['label_title'].capitalize}-#{b['label_color'].capitalize}, Publish Date: #{b['item_publish_date'].capitalize}, Publisher: #{b['book_publisher'].capitalize}, Cover State: #{b['book_cover_state'].capitalize}, Moved to archived?: #{b['item_move_to_archive']}".green
  end
  puts '-'.yellow * IO.console.winsize[1]
  puts
end
