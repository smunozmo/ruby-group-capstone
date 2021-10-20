def list_movies(movies)
  puts " MOVIES ".center(IO.console.winsize[1], '-')
  movies.each do |b|
    puts "[#{b['json_class']}] Genre: #{b['genre_name']}, Author: #{b['author_first_name']} #{b['author_last_name']}, Source: #{b['source_name']}, Label: #{b['label_title']}-#{b['label_color']}, Publish Date: #{b['item_publish_date']}, Moved to archived?: #{b['item_move_to_archive']}, Silent: #{b['movie_silent']}"
  end
  puts "-"*IO.console.winsize[1]
end
