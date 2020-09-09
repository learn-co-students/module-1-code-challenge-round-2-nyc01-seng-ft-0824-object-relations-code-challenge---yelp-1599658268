class Review

    @@all = []
     
    attr_accessor :rating
    attr_reader :customer, :restaurant

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    
  
end