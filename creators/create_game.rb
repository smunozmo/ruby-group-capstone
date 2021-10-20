def create_game()
  # Label
  print 'Label title (e.g. new or gift): '
  game_label_title = gets.chomp.downcase
  print 'Label color (e.g. blue or yellow): '
  game_label_color = gets.chomp.downcase

  # Genre
  print 'Genre: '
  game_genre = gets.chomp.downcase

  # Source
  print 'Source (e.g. from a friend or online shop): '
  game_source = gets.chomp.downcase

  # Author
  print 'Author - First Name: '
  author_first_name = gets.chomp.downcase
  print 'Author - Last Name: '
  author_last_name = gets.chomp.downcase

  # Game Data
  print 'Multiplayer (e.g. yes or no): '
  game_multiplayer = gets.chomp.downcase
  print 'Game publish date: (Format: YYYY-MM-DD): '
  game_publish_date = gets.chomp.downcase
  print 'Last played at: (Format: YYYY-MM-DD): '
  game_last_played_at = gets.chomp.downcase
  game_multiplayer_boolean = true
  game_multiplayer_boolean = false if game_multiplayer.downcase == 'no'

  @all_labels["#{game_label_title.downcase}_#{game_label_color.downcase}"] = Label.new(game_label_title.downcase, game_label_color.downcase) if @all_labels["#{game_label_title.downcase}_#{game_label_color.downcase}"].nil?

  @all_genres[game_genre] = Genre.new(game_genre)
  @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"] = Author.new(author_first_name.downcase, author_last_name.downcase) if @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"].nil?
  @all_sources[game_source] = Source.new(game_source) if @all_sources[game_source].nil?

  new_game = Game.new(game_publish_date, game_multiplayer_boolean, game_last_played_at)
  new_game.genre = @all_genres[game_genre]
  new_game.author = @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"]
  new_game.source = @all_sources[game_source]
  new_game.label = @all_labels["#{game_label_title.downcase}_#{game_label_color.downcase}"]

  @all_labels["#{game_label_title.downcase}_#{game_label_color.downcase}"].add_item(new_game)
  @all_genres[game_genre].add_item(new_game)
  @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"].add_item(new_game)
  @all_sources[game_source].add_item(new_game)

  game_to_save = { 'json_class' => new_game.class, 'game_last_played_at' => new_game.last_played_at, 'genre_name' => new_game.genre.name, 'author_first_name' => new_game.author.first_name, 'author_last_name' => new_game.author.last_name,
                   'source_name' => new_game.source.name, 'game_multiplayer' => new_game.multiplayer, 'label_title' => new_game.label.title, 'label_color' => new_game.label.color, 'item_publish_date' => new_game.publish_date,
                   'item_move_to_archive' => new_game.move_to_archive }
  @games.push(game_to_save)
  puts "\nSuccess!\n".green
end
