require_relative './item'

class Game < Item
  attr_reader :publish_date, :multiplayer, :last_played_at

  def initialize(publish_date, multiplayer, last_played_at)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    time = Time.now
    date_to_compare = Time.new(time.year - 2, time.month, time.day)
    p date_to_compare
    formatted_date = date_to_compare.strftime('%Y-%m-%d')
    super && @last_played_at < formatted_date
  end
end
