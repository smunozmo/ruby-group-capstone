require_relative './item'
require_relative './create_book'
require_relative './create_movie'
require_relative './create_game'
require_relative './list_books'
require_relative './list_labels'
require_relative './list_movies'
require_relative './list_sources'
require_relative './list_games'
require_relative './list_authors'
require_relative './initialize_books'
require_relative './initialize_movies'
require 'json'

puts
puts 'Welcome to Catalog App!'

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
def main
  begin
    books_file = File.read('./books.json')
    @books = JSON.parse(books_file)
  rescue StandardError
    File.write('./books.json', JSON.dump([]))
    books_file = File.read('./books.json')
    @books = JSON.parse(books_file)
  end
  begin
    movies_file = File.read('./movies.json')
    @movies = JSON.parse(movies_file)
  rescue StandardError
    File.write('./movies.json', JSON.dump([]))
    movies_file = File.read('./movies.json')
    @movies = JSON.parse(movies_file)
  end
  @musicalbums = []
  @games = []
  @all_genres = {}
  @all_authors = {}
  @all_labels = {}
  @all_sources = {}
  initialize_books(@books, @all_genres, @all_authors, @all_labels, @all_sources)
  initialize_movies(@movies, @all_genres, @all_authors, @all_labels, @all_sources)
  input = ''

  while input.to_i != 13
    puts
    puts 'Please choose an option by entering a number:'
    puts ' 1 - List all books'
    puts ' 2 - List all music albums'
    puts ' 3 - List all movies'
    puts ' 4 - List all games'
    puts ' 5 - List all genres (e.g \'Comedy\', \'Thriller\')'
    puts ' 6 - List all labels (e.g. \'Gift\', \'New\')'
    puts ' 7 - List all authors (e.g. \'Stephen King\')'
    puts ' 8 - List all sources (e.g. \'From a friend\', \'Online shop\')'
    puts ' 9 - Add a book'
    puts '10 - Add a music album'
    puts '11 - Add a movie'
    puts '12 - Add a game'
    puts '13 - Exit'
    puts
    print 'Option: '
    input = gets.chomp

    case input
    when '1'
      list_books(@books)
    when '2'
      '2'
    when '3'
      list_movies(@movies)
    when '4'
      list_games(@games)
    when '5'
      '5'
    when '6'
      list_labels(@all_labels)
    when '7'
      list_authors(@all_authors)
    when '8'
      list_sources(@all_sources)
    when '9'
      create_book(@books, @all_genres, @all_authors, @all_labels, @all_sources)
    when '10'
      '10'
    when '11'
      create_movie(@movies, @all_genres, @all_authors, @all_labels, @all_sources)
    when '12'
      create_game(@games, @all_genres, @all_authors, @all_labels, @all_sources)
    when '13'
      File.write('./books.json', JSON.dump(@books))
      File.write('./movies.json', JSON.dump(@movies))
      File.write('./games.json', JSON.dump(@games))
      puts 'Thanks for using this app'
    else
      puts 'This option is not available'
    end
  end
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity

main
