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

  def restaurants
    Review.all.map { |restaurant| restaurant.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    Review.all.select{|customer| customer.rating}.count
  end

  def self.find_by_name(name)
   self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.find {|customer| customer.given_name == name}
  end

  
end

