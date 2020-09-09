class Review
    attr_accessor :customer, :restaurant, :rating
    @@all = []
  def initialize(customer, restaurant, rating = 0)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end
  def self.all
    @@all 
  end
end