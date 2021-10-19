def list_games(games)
  puts '--- GAMES ---'
  games.each do |b|
    puts "[#{b['json_class']}] Genre: #{b['genre_name']}, Author: #{b['author_first_name']} #{b['author_last_name']}, Source: #{b['source_name']}, Label: #{b['label_title']}-#{b['label_color']}, Publish Date: #{b['item_publish_date']}, Multiplayer: #{b['game_multiplayer']}, Last played at: #{b['game_last_played_at']}, Moved to archived?: #{b['item_move_to_archive']}"
  end
end
