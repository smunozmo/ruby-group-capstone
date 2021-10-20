require_relative '../game'
require_relative '../author'

describe Author do
  context 'when use Create Author method' do
    it 'Authors name says Mario and lastname shows Chois, also authors length shows 1' do
      multiplayer = 'yes'
      last_played_at = '2019-12-12'
      publish_date = '2005-02-02'
      author_first_name = 'Mario'
      author_last_name = 'Chois'
      new_game = Game.new(publish_date, multiplayer, last_played_at)
      new_game_author = Author.new(author_first_name, author_last_name)
      new_game_author.add_item(new_game)

      expect(new_game_author.items.length).to eq(1)
      expect(new_game_author.first_name).to eq('Mario')
      expect(new_game_author.last_name).to eq('Chois')
    end
  end
end
