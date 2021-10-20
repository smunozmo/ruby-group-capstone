require_relative './item'

class MusicAlbum < Item
  attr_reader :on_spotify, :publish_date

  def initialize(publish_date, on_spotify)
    super(publish_date)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    super && @on_spotify
  end
end
