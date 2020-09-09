class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    #Returns a **unique** array of all restaurants a customer has reviewed
    reviews.map {|review| review.restaurant}.uniq
  end

  def add_review(resturant,rating)
    reviews.new(self, restaurant, rating)
  end

  def num_reviews
    #Returns the total number of reviews that a customer has authored
    reviews.map {|review| review.restaurant}.count
  end

  # def Self.find_by_name(name)
    #given a string of a **full name**, 
    #returns the **first customer** whose full name matches
      # Customer.find {|customer| == given_name, family_name}
  # end


end