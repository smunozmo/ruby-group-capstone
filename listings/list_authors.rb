def list_authors(all_authors)
  puts " AUTHORS ".center(IO.console.winsize[1], '-')
  all_authors.each do |_key, value|
    puts "#{value.first_name} #{value.last_name}"
  end
  puts "-"*IO.console.winsize[1]
end
