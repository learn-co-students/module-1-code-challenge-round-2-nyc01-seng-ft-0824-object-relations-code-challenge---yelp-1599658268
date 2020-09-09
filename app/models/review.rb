class Review
  attr_reader :customer, :restaurant 
  attr_accessor :rating
  @@all = [] 

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating.to_i
        @@all << self 
    end

    def self.all
        @@all 
    end
end