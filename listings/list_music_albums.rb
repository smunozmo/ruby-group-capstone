def list_music_album(music_album)
  puts
  puts ' MUSIC ALBUMS '.center(IO.console.winsize[1], '-').yellow
  puts 'No items created'.red if music_album.length.zero?
  music_album.each do |b|
    puts "[#{b['json_class']}] Genre: #{b['genre_name'].capitalize}, Author: #{b['author_first_name'].capitalize} #{b['author_last_name'].capitalize}, Source: #{b['source_name'].capitalize}, Label: #{b['label_title'].capitalize}-#{b['label_color'].capitalize}, Publish Date: #{b['item_publish_date'].capitalize}, On Spotify: #{b['music_album_on_spotify']}, Moved to archived?: #{b['item_move_to_archive']}".green
  end
  puts '-'.yellow * IO.console.winsize[1]
  puts
end
