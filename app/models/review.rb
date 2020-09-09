class Review
    #SSOT
  
    attr_reader :customer, :restaurant
    #The #customer and #restaurant methods are complete
    attr_accessor :rating
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
      end















end