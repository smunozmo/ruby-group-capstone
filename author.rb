class Author
  attr_reader :items, :name

  def initialize(name)
    @id = Random.rand(1..1000)
    @first_n = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.genre = self
  end
end
