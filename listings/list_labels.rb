def list_labels(all_labels)
  puts " LABELS ".center(IO.console.winsize[1], '-')
  all_labels.each do |_key, value|
    puts value.title.to_s
  end
  puts "-"*IO.console.winsize[1]
end
