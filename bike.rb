require_relative 'pannier'

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @pannier = Pannier.new(MAX_CARGO_ITEMS)
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    @pannier.add(item)
  end

  def remove_cargo(item)
    @pannier.remove(item)
  end

  def pannier_capacity
    @pannier.capacity
  end

  def pannier_remaining_capacity
    @pannier.remaining_capacity
  end

  def pannier_items
    @pannier.items
  end

end
