class Item
  attr_accessor :genre, :author, :source, :label

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  private

  def can_be_archived?
    time = Time.now
    date_to_compare = Time.new(time.year - 10, time.month, time.day)
    formatted_date = date_to_compare.strftime('%Y-%m-%d')
    @publish_date < formatted_date
  end
end
