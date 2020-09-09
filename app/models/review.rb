class Review
    attr_accessor :customer, :restaurant, :rating
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def customer
        Customer.map {|customer|customer.review == self}#I'm assuming we need to map over the reviews to get that specific review
    end

    def restaurant
        Restaurant.map {|restaurant|restaurant.review == self}
    end

    def self.all
        @@all
    end
end