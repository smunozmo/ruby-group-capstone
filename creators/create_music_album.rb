def create_music_album()
  # Label
  print 'Label title (e.g. new or gift): '
  music_album_label_title = gets.chomp
  print 'Label color (e.g. blue or yellow): '
  music_album_label_color = gets.chomp

  # Genre
  print 'Genre: '
  music_album_genre = gets.chomp

  # Source
  print 'Source (e.g. from a friend or online shop): '
  music_album_source = gets.chomp

  # Author
  print 'Author - First Name: '
  author_first_name = gets.chomp
  print 'Author - Last Name: '
  author_last_name = gets.chomp

  # Music Album Data
  print 'Publish date (Format: YYYY-MM-DD): '
  music_album_publish_date = gets.chomp
  print 'On Spotify (yes or no): '
  music_album_on_spotify = gets.chomp
  music_album_on_spotify_boolean = true
  !music_album_on_spotify_boolean if music_album_on_spotify.downcase == 'no'

  @all_labels["#{music_album_label_title.downcase}_#{music_album_label_color.downcase}"] = Label.new(music_album_label_title.downcase, music_album_label_color.downcase) if @all_labels["#{music_album_label_title.downcase}_#{music_album_label_color.downcase}"].nil?
  @all_genres[music_album_genre] = Genre.new(music_album_genre)
  @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"] = Author.new(author_first_name, author_last_name)
  @all_sources[music_album_source] = Source.new(music_album_source)

  new_music_album = MusicAlbum.new(music_album_publish_date, music_album_on_spotify_boolean)
  new_music_album.genre = @all_genres[music_album_genre]
  new_music_album.source = @all_sources[music_album_source]
  new_music_album.label = @all_labels["#{music_album_label_title.downcase}_#{music_album_label_color.downcase}"]
  new_music_album.author = @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"]

  @all_labels["#{music_album_label_title.downcase}_#{music_album_label_color.downcase}"].add_item(new_music_album)
  @all_genres[music_album_genre].add_item(new_music_album)
  @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"].add_item(new_music_album)
  @all_sources[music_album_source].add_item(new_music_album)

  music_album_to_save = { 'json_class' => new_music_album.class, 'music_album_on_spotify' => new_music_album.on_spotify,
                          'genre_name' => new_music_album.genre.name, 'author_first_name' => new_music_album.author.first_name, 'author_last_name' => new_music_album.author.last_name, 'source_name' => new_music_album.source.name,
                          'label_title' => new_music_album.label.title, 'label_color' => new_music_album.label.color, 'item_publish_date' => new_music_album.publish_date, 'item_move_to_archive' => new_music_album.move_to_archive }
  @music_album.push(music_album_to_save)
  puts "\nSuccess!\n".green
end
