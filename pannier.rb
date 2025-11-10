class Pannier
  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @items = []
  end

  def add(item)
    raise "Pannier is full" if full?
    @items << item
    true
  end

  def remove(item)
    !!@items.delete(item)
  end

  def items
    @items.dup
  end

  def capacity
    @capacity
  end

  def remaining_capacity
    @capacity - @items.size
  end

  def full?
    @items.size >= @capacity
  end
end
