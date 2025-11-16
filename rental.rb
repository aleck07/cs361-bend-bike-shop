class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + (2 * self.bike.weight) + (2 * self.bike.luggage.count)
  end

  def weight
    self.bike.weight + self.bike.luggage.count
  end

end
