require_relative '../classes/music_album'

describe MusicAlbum do
  context 'when add an album with on_spotify' do
    it 'method move_to_archive should be true' do
      music_album_publish_date = '2000-10-18'
      on_spotify = true

      new_music_album = MusicAlbum.new(music_album_publish_date, on_spotify)

      expect(new_music_album.move_to_archive).to eq(true)
    end
  end
end
