def list_authors(all_authors)
  puts
  puts ' AUTHORS '.center(IO.console.winsize[1], '-').yellow
  puts 'Not found'.red if all_authors.length.zero?
  all_authors.each do |_key, value|
    puts "#{value.first_name} #{value.last_name}".green
  end
  puts '-'.yellow * IO.console.winsize[1]
  puts
end
