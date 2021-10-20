def list_sources(all_sources)
  puts '--- SOURCES ---'
  all_sources.each do |_key, value|
    puts value.name.to_s
  end
end
