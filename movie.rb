require_relative './item'

class Movie < Item
  attr_reader :silent, :publish_date

  def initialize(publish_date, silent)
    super(publish_date)
    @silent = silent
  end

  private

  def can_be_archived?
    super || @silent == true
  end
end
