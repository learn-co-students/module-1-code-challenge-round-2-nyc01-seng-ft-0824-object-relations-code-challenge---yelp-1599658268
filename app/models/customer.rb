class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    self.reviews.filter {|customer| customer.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    # given a **restaurant object** and a star rating (as an integer), 
    # creates a new review and associates it with that customer and restaurant
    new_review = Review.new(:restaurant, :rating)
  end

end
