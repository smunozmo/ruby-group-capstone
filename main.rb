require_relative './classes/item'
require_relative './creators/create_book'
require_relative './creators/create_movie'
require_relative './creators/create_game'
require_relative './creators/create_music_album'
require_relative './listings/list_books'
require_relative './listings/list_labels'
require_relative './listings/list_movies'
require_relative './listings/list_sources'
require_relative './listings/list_games'
require_relative './listings/list_authors'
require_relative './listings/list_music_albums'
require_relative './listings/list_genres'
require_relative './initializers/initialize_books'
require_relative './initializers/initialize_movies'
require_relative './initializers/initialize_games'
require_relative './initializers/initialize_music_albums'
require_relative './classes/label'
require_relative './classes/source'
require_relative './classes/author'
require_relative './classes/genre'
require_relative './classes/book'
require_relative './classes/game'
require_relative './classes/movie'
require_relative './classes/music_album'
require_relative './colorize/colorize'
require_relative './colorize/thankyou'
require 'json'
require 'io/console'

puts
puts 'Welcome to Catalog App!'.green

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
def main
  begin
    books_file = File.read('./data/books.json')
    @books = JSON.parse(books_file)
  rescue StandardError
    File.write('./data/books.json', JSON.dump([]))
    books_file = File.read('./data/books.json')
    @books = JSON.parse(books_file)
  end
  begin
    music_album_file = File.read('./data/music_album.json')
    @music_album = JSON.parse(music_album_file)
  rescue StandardError
    File.write('./data/music_album.json', JSON.dump([]))
    music_album_file = File.read('./data/music_album.json')
    @music_album = JSON.parse(music_album_file)
  end
  begin
    movies_file = File.read('./data/movies.json')
    @movies = JSON.parse(movies_file)
  rescue StandardError
    File.write('./data/movies.json', JSON.dump([]))
    movies_file = File.read('./data/movies.json')
    @movies = JSON.parse(movies_file)
  end
  begin
    games_file = File.read('./data/games.json')
    @games = JSON.parse(games_file)
  rescue StandardError
    File.write('./data/games.json', JSON.dump([]))
    games_file = File.read('./data/games.json')
    @games = JSON.parse(games_file)
  end
  @all_genres = {}
  @all_authors = {}
  @all_labels = {}
  @all_sources = {}
  initialize_books
  initialize_music_albums
  initialize_movies
  initialize_games
  input = ''

  while input.to_i != 13
    puts
    puts 'Please choose an option by entering a number:'.yellow
    puts
    puts ' 1 - List all books'.blue
    puts ' 2 - List all music albums'.blue
    puts ' 3 - List all movies'.blue
    puts ' 4 - List all games'.blue
    puts ' 5 - List all genres (e.g \'Comedy\', \'Thriller\')'.light_blue
    puts ' 6 - List all labels (e.g. \'Gift\', \'New\')'.light_blue
    puts ' 7 - List all authors (e.g. \'Stephen King\')'.light_blue
    puts ' 8 - List all sources (e.g. \'From a friend\', \'Online shop\')'.light_blue
    puts ' 9 - Add a book'.pink
    puts '10 - Add a music album'.pink
    puts '11 - Add a movie'.pink
    puts '12 - Add a game'.pink
    puts '13 - Exit'.red
    puts
    print 'Option: '.yellow
    input = gets.chomp

    case input
    when '1'
      list_books(@books)
    when '2'
      list_music_album(@music_album)
    when '3'
      list_movies(@movies)
    when '4'
      list_games(@games)
    when '5'
      list_genres(@all_genres)
    when '6'
      list_labels(@all_labels)
    when '7'
      list_authors(@all_authors)
    when '8'
      list_sources(@all_sources)
    when '9'
      create_book
    when '10'
      create_music_album
    when '11'
      create_movie
    when '12'
      create_game
    when '13'
      File.write('./data/books.json', JSON.dump(@books))
      File.write('./data/music_album.json', JSON.dump(@music_album))
      File.write('./data/movies.json', JSON.dump(@movies))
      File.write('./data/games.json', JSON.dump(@games))
      thankyou
    else
      puts 'This option is not available'
    end
    if input.to_i >= 1 && input.to_i <= 8
      puts 'Press any key to contine...'
      STDIN.getch
    end
  end
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity

main
