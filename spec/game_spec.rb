require_relative '../game'
require_relative '../author'

describe Game do
  context 'when use add_item method' do
    it 'items array length increase by one, multiplayer shows true, and last_played_at shows 2019-12-12' do
      multiplayer = 'yes'
      last_played_at = '2019-12-12'
      publish_date = '2005-02-02'
      author_first_name = 'Mario'
      author_last_name = 'Chois'
      new_game = Game.new(publish_date, multiplayer, last_played_at)
      new_game_author = Author.new(author_first_name, author_last_name)
      new_game_author.add_item(new_game)

      expect(new_game_author.items.length).to eq(1)
      expect(new_game.multiplayer).to eq('yes')
      expect(new_game.last_played_at).to eq('2019-12-12')
    end
  end
end
