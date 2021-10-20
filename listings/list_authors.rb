def list_authors(all_authors)
  puts '--- AUTHORS ---'
  all_authors.each do |_key, value|
    puts "#{value.first_name} #{value.last_name}"
  end
end
