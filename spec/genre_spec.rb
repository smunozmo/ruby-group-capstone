require_relative '../classes/music_album'
require_relative '../classes/genre'

describe Genre do
  context 'when use add_item method' do
    it 'items array length increase by one' do
      music_album_label_name = '8 Year Affair'
      music_album_publish_date = '2010-02-02'
      on_spotify = true

      new_genre = Genre.new(music_album_label_name.downcase)
      new_music_album = MusicAlbum.new(music_album_publish_date, on_spotify)
      new_music_album.genre = new_genre
      new_genre.add_item(new_music_album)

      expect(new_genre.items.length).to eq(1)
    end
  end
end
