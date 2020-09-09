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
    Review.all.select{|rev| rev.customer == self}
  end

  def restaurants
    self.reviews.map{|item| item.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(customer = self, restaurant, rating)
#    if review.restaurant == restaurant
#      new_rev = Review.new(costumer = self, restaurant, rating)
#    else
#      "I did not eat at this establishment!"
  end

  def num_reviews
    self.reviews.length
  end

  def self.find_by_name(name)
    customer = self.all.find {|item| item.full_name.include?()}
    customer.full_name
  end

  def self.find_all_by_given_name(name)
#    self.all.find {|item| item.given_name}
    self.all.find_all {|item| item.given_name.start_with?(name)}

  end
end
