def initialize_music_albums()
  @music_album.each do |b|
    @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"] = Label.new(b['label_title'].downcase, b['label_color'].downcase) if @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"].nil?
    @all_genres[b['genre_name']] = Genre.new(b['genre_name']) if @all_genres[b['genre_name']].nil?
    @all_sources[b['source_name']] = Source.new(b['source_name']) if @all_sources[b['source_name']].nil?
    @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"] = Author.new(b['author_first_name'], b['author_last_name']) if @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"].nil?

    new_music_album = MusicAlbum.new([b['item_publish_date']], [b['music_album_on_spotify']])
    new_music_album.genre = @all_genres[b['genre_name']]
    new_music_album.source = @all_sources[b['source_name']]
    new_music_album.author = @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"]
    new_music_album.label = @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"]

    @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"].add_item(new_music_album)
    @all_genres[b['genre_name']].add_item(new_music_album)
    @all_sources[b['source_name']].add_item(new_music_album)
    @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"].add_item(new_music_album)
  end
end
