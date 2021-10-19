def initialize_games(_games, _all_genres, _all_authors, _all_labels, _all_sources)
  @games.each do |b|
    @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"] = Label.new(b['label_title'].downcase, b['label_color'].downcase) if @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"].nil?
    @all_sources[b['source_name']] = Source.new(b['source_name']) if @all_sources[b['source_name']].nil?
    @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"] = Author.new(b['author_first_name'], b['author_last_name']) if @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"].nil?
    new_game = Game.new(b['item_publish_date'], b['game_multiplayer'], b['game_last_played_at'])

    new_game.label = @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"]
    new_game.source = @all_sources[b['source_name']]
    new_game.author = @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"]

    @all_labels["#{b['label_title'].downcase}_#{b['label_color'].downcase}"].add_item(new_game)
    @all_sources[b['source_name']].add_item(new_game)
    @all_authors["#{b['author_first_name']}_#{b['author_last_name']}"].add_item(new_game)
  end

  # all_genres[movie_genre] = Genre.new(movie_genre)
  # all_authors["#{author_first_name} #{author_last_name}"] = Author.new(author_first_name, author_last_name)

  # new_game.genre(all_genres[movie_genre])
  # new_game.author(all_authors["#{author_first_name} #{author_last_name}"])

  # all_genres[movie_genre].add_item(new_game)
  # all_authors["#{author_first_name} #{author_last_name}"].add_item(new_game)
end
