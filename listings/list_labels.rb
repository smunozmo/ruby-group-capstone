def list_labels(all_labels)
  puts
  puts ' LABELS '.center(IO.console.winsize[1], '-').yellow
  puts 'Not found'.red if all_labels.length.zero?
  all_labels.each do |_key, value|
    puts "#{value.title.to_s.capitalize.green} (#{value.color.to_s.capitalize.green})"
  end
  puts '-'.yellow * IO.console.winsize[1]
  puts
end
