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

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    self.reviews.map {|review| review.restaurant}.uniq
  end

  # def add_review(restaurant, rating)
  #   self.reviews.map {|review| review.add_review}.restaurant
  # end

  def full_name
    "#{given_name} #{family_name}"
  end

  def num_reviews
    self.reviews.filter {|review| review.customer}.count
  end


  # def self.find_all_by_given_name(name)

  # end
end
