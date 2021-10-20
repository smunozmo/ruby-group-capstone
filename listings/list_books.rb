def list_books(books)
  puts
  puts ' BOOKS '.center(IO.console.winsize[1], '-').yellow
  puts 'No items created'.red if books.length.zero?
  books.each do |b|
    puts "[#{b['json_class']}] Genre: #{b['genre_name']}, Author: #{b['author_first_name']} #{b['author_last_name']}, Source: #{b['source_name']}, Label: #{b['label_title']}-#{b['label_color']}, Publish Date: #{b['item_publish_date']}, Publisher: #{b['book_publisher']}, Cover State: #{b['book_cover_state']}, Moved to archived?: #{b['item_move_to_archive']}".green
  end
  puts '-'.yellow * IO.console.winsize[1]
  puts
end
