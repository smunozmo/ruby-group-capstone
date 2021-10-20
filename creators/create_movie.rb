def create_movie()
  # Label
  print 'Label title (e.g. new or gift): '
  movie_label_title = gets.chomp.downcase
  print 'Label color (e.g. blue or yellow): '
  movie_label_color = gets.chomp.downcase

  # Genre
  print 'Genre: '
  movie_genre = gets.chomp.downcase

  # Source
  print 'Source (e.g. from a friend or online shop): '
  movie_source = gets.chomp.downcase

  # Author
  print 'Author - First Name: '
  author_first_name = gets.chomp.downcase
  print 'Author - Last Name: '
  author_last_name = gets.chomp.downcase

  # Movie Data
  print 'Publish date (Format: YYYY-MM-DD): '
  movie_publish_date = gets.chomp.downcase
  print 'Silent: (e.g. yes or no): '
  movie_silent = gets.chomp.downcase
  movie_silent_boolean = true
  movie_silent_boolean = false if movie_silent.downcase == 'no'

  @all_labels["#{movie_label_title.downcase}_#{movie_label_color.downcase}"] = Label.new(movie_label_title.downcase, movie_label_color.downcase) if @all_labels["#{movie_label_title.downcase}_#{movie_label_color.downcase}"].nil?
  @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"] = Author.new(author_first_name.downcase, author_last_name.downcase) if @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"].nil?
  @all_genres[movie_genre] = Genre.new(movie_genre)
  @all_sources[movie_source] = Source.new(movie_source) if @all_sources[movie_source].nil?

  new_movie = Movie.new(movie_publish_date, movie_silent_boolean)
  new_movie.genre = @all_genres[movie_genre]
  new_movie.author = @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"]
  new_movie.source = @all_sources[movie_source]
  new_movie.label = @all_labels["#{movie_label_title.downcase}_#{movie_label_color.downcase}"]

  @all_labels["#{movie_label_title.downcase}_#{movie_label_color.downcase}"].add_item(new_movie)
  @all_genres[movie_genre].add_item(new_movie)
  @all_authors["#{author_first_name.downcase}_#{author_last_name.downcase}"].add_item(new_movie)
  @all_sources[movie_source].add_item(new_movie)

  movie_to_save = { 'json_class' => new_movie.class, 'movie_silent' => new_movie.silent, 'genre_name' => new_movie.genre.name, 'author_first_name' => new_movie.author.first_name, 'author_last_name' => new_movie.author.last_name,
                    'source_name' => new_movie.source.name, 'label_title' => new_movie.label.title, 'label_color' => new_movie.label.color, 'item_publish_date' => new_movie.publish_date,
                    'item_move_to_archive' => new_movie.move_to_archive }
  @movies.push(movie_to_save)
  puts "\nSuccess!\n".green
end
