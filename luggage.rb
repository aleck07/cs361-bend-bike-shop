class Luggage

  DEFAULT_MAX_CAPACITY = 10

  def initialize(initial_capacity, items)
    @capacity = initial_capacity
    @items = items
  end

  def add(item)
    @items << item
  end

  def count
    @items.count
  end

  def weight
    @items.size * 10
  end

end
