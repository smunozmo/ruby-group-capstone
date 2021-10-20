def list_labels(all_labels)
  puts '--- LABELS ---'
  all_labels.each do |_key, value|
    puts value.title.to_s
  end
end
