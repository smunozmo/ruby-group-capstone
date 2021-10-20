def list_sources(all_sources)
  puts " SOURCES ".center(IO.console.winsize[1], '-')
  all_sources.each do |_key, value|
    puts value.name.to_s
  end
  puts "-"*IO.console.winsize[1]
end
