def list_genres(all_genres)
  puts
  puts ' GENRES '.center(IO.console.winsize[1], '-').yellow
  puts 'Not found'.red if all_genres.length.zero?
  all_genres.each do |_key, value|
    puts value.name.to_s.capitalize.green
  end
  puts '-'.yellow * IO.console.winsize[1]
  puts
end
