class Review

    @@all << []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end
  
    def self.all
        @all
    end

    def review_rating
        self.Restaurant.all { |r| r.rating.each == self }
        @restaurant
    end

    def review.all
        self.Restaurant.all { |r| r.rating.map == self }        #=> 
        self.all
    end

    def review_customers
        self.Customer.each { |r| r.rating.uniq == self }
    end

    def review_restaurant
        self.review.all.select { |r| r.rating.select = self }
    end

end