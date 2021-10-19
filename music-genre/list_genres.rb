def list_genres(all_genres)
  puts '--- GENRES ---'
  all_genres.each do |_key, value|
    puts value.name.to_s
  end
end
