def list_music_album(music_album)
  puts " MUSIC ALBUMS ".center(IO.console.winsize[1], '-')
  music_album.each do |b|
    puts "[#{b['json_class']}] Genre: #{b['genre_name']}, Author: #{b['author_first_name']} #{b['author_last_name']}, Source: #{b['source_name']}, Label: #{b['label_title']}-#{b['label_color']}, Publish Date: #{b['item_publish_date']}, On Spotify: #{b['on_spotify']}, Moved to archived?: #{b['item_move_to_archive']}"
  end
  puts "-"*IO.console.winsize[1]
end
