require_relative './item'

puts
puts 'Welcome to Catalog App!'

class Main
  def initialize
    @books = []
    @musicalbums = []
    @movies = []
    @games = []
  end

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

  def listallbooks
    @books.each_with_index do |e, index|
      puts "#{index}) Name: #{e.label.title}, Author: #{e.author.first_name}, #{e.author.last_name}, Genre: #{e.genre.name}, Source: #{e.source.name}, Source: #{e.source.color}"
    end
  end

  def listallmusicalbums
    @musicalbums.each_with_index do |e, index|
      puts "#{index}) Name: #{e.label.title}, Author: #{e.author.first_name}, #{e.author.last_name}, Genre: #{e.genre.name}, Source: #{e.source.name}"
    end
  end

  case input
  when '1'
    listallbooks
  when '2'
    '2'
  when '3'
    '3'
  when '4'
    '4'
  when '5'
    '5'
  when '6'
    '6'
  when '7'
    '7'
  when '8'
    '8'
  when '9'
    '9'
  when '10'
    '10'
  when '11'
    '11'
  when '12'
    '12'
  when '13'
    puts 'Thanks for using this app'
  else
    puts 'This option is not available'
  end
end

Main new
