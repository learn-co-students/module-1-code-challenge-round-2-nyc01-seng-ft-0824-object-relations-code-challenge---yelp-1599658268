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

  def cust_restaurants #helper method for #restaurants
    Review.all.select {|rest|rest.restaurant}
  end 

  def restaurants
    cust_restaurants.filter {|cust|cust.customer ==self }
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    restaurants.map.count {|rev|rev.customer == self}
  end 

  def self.find_by_name(name)            # was looking to find the first matching full name and return got all same returns, so close!!
    self.all.find {|name|name.full_name}
  end 

  def self.find_by_given_name(name)
    self.all.find {|name|name.given_name}
  end 






end
