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


  def restaurants
    self.restaurants.map {|restaurant|restaurant.customer}.uniq #the same method as def customers but switched around.
  end

  def add_review(restaurant, rating)
    #Come back to finish this
  end

  def customer num_reviews)


  def self.all
    @@all
  end
end
