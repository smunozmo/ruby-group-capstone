def list_genres(all_genres)
  puts " GENRES ".center(IO.console.winsize[1], '-')
  all_genres.each do |_key, value|
    puts value.name.to_s
  end
  puts "-"*IO.console.winsize[1]
end
