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

  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def restaurants
    self.reviews.map{|review| review.restaurant}.uniq
  end
  
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def self.all
    @@all
  end

end
