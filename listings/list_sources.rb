def list_sources(all_sources)
  puts
  puts ' SOURCES '.center(IO.console.winsize[1], '-').yellow
  puts 'Not found'.red if all_sources.length.zero?
  all_sources.each do |_key, value|
    puts value.name.to_s.green
  end
  puts '-'.yellow * IO.console.winsize[1]
end
