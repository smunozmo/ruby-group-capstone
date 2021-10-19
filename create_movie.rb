require_relative './source'
require_relative './label'
require_relative './movie'

def create_movie(_movies, _all_genres, _all_authors, _all_labels, _all_sources)
  # option_header('Add a book')

  # Label
  print 'Label title (e.g. new or gift): '
  movie_label_title = gets.chomp
  print 'Label color (e.g. blue or yellow): '
  movie_label_color = gets.chomp

  # Genre
  print 'Genre: '
  movie_genre = gets.chomp

  # Source
  print 'Source (e.g. from a friend or online shop): '
  movie_source = gets.chomp

  # Author
  print 'Author - First Name: '
  author_first_name = gets.chomp
  print 'Author - Last Name: '
  author_last_name = gets.chomp

  # Movie Data
  print 'Publish date (Format: YYYY-MM-DD): '
  movie_publish_date = gets.chomp
  print 'Silent: (e.g. yes or no): '
  movie_silent = gets.chomp
  movie_silent_boolean = true
  !movie_silent_boolean if movie_silent == 'no'

  @all_labels["#{movie_label_title.downcase}_#{movie_label_color.downcase}"] = Label.new(movie_label_title.downcase, movie_label_color.downcase) if @all_labels["#{movie_label_title.downcase}_#{movie_label_color.downcase}"].nil?

  # all_genres[movie_genre] = Genre.new(movie_genre)
  # all_authors["#{author_first_name} #{author_last_name}"] = Author.new(author_first_name, author_last_name)
  @all_sources[movie_source] = Source.new(movie_source)

  new_movie = Movie.new(movie_publish_date, movie_silent_boolean)
  # new_movie.genre(all_genres[movie_genre])
  # new_movie.author(all_authors["#{author_first_name} #{author_last_name}"])
  new_movie.source = @all_sources[movie_source]
  new_movie.label = @all_labels["#{movie_label_title.downcase}_#{movie_label_color.downcase}"]

  @all_labels["#{movie_label_title.downcase}_#{movie_label_color.downcase}"].add_item(new_movie)
  # all_genres[movie_genre].add_item(new_movie)
  # all_authors["#{author_first_name} #{author_last_name}"].add_item(new_movie)
  @all_sources[movie_source].add_item(new_movie)

  movie_to_save = { 'json_class' => new_movie.class, 'movie_silent' => new_movie.silent, 'genre_name' => 'new_movie.genre.name', 'author_first_name' => 'new_movie.author.first_name', 'author_last_name' => 'new_movie.author.last_name',
                    'source_name' => new_movie.source.name, 'label_title' => new_movie.label.title, 'label_color' => new_movie.label.color, 'item_publish_date' => new_movie.publish_date,
                    'item_move_to_archive' => new_movie.move_to_archive }
  @movies.push(movie_to_save)
end
