class Review
 
    #SSOT
    #The #customer and #restaurant methods are already complete
    attr_reader :customer, :restaurant
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